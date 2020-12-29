import Foundation
import ApolloCodegenLib

// Grab the parent folder of this file on the filesystem
let parentFolderOfScriptFile = FileFinder.findParentFolder()

// Use that to calculate the source root of both the
let sourceRootURL = parentFolderOfScriptFile
    .apollo.parentFolderURL() // Sources
    .apollo.parentFolderURL() // Codegen
    .apollo.parentFolderURL() // MyProject

// From the source root, figure out where your target
// root is within your main project
let targetRootURL = sourceRootURL
    .apollo.childFolderURL(folderName: "capture-the-flag/service")

// Set up the URL you want to use to download the project
// In Golang back-end,
// This end point needs to be in sync with handlerScheme
// Look in app.go for handlerScheme := relay.Handler{Schema: graph.GQLSchema}
let endpoint = URL(string: "http://localhost:8080/query")!

// Create an options object for downloading the schema
let schemaDownloadOptions = ApolloSchemaOptions(endpointURL: endpoint,
                                                outputFolderURL: targetRootURL)
                                      
// Calculate where you want to create the folder where the CLI will
// be downloaded by the ApolloCodegenLib framework.
let cliFolderURL = sourceRootURL
    .apollo.childFolderURL(folderName: "CodeGen")
    .apollo.childFolderURL(folderName: "ApolloCLI")

do {
  // Actually attempt to download the schema.
  try ApolloSchemaDownloader.run(with: cliFolderURL,
                                 options: schemaDownloadOptions)
} catch {
  // This makes the error message in Xcode a lot more legible,
  // and prevents the script from continuing to try to generate
  // code if the schema download failed.
  exit(1)
}

// Create the default Codegen options object (assumes schema.json
// is in the target root folder, all queries are in some kind
// of subfolder of the target folder and will output as a
// single file to API.swift in the target folder)
let codegenOptions = ApolloCodegenOptions(targetRootURL: targetRootURL)

do {
    // Actually attempt to generate code.
    try ApolloCodegen.run(from: targetRootURL,
                          with: cliFolderURL,
                          options: codegenOptions)
} catch {
    // This makes the error message in Xcode a lot more legible.
    exit(1)
}

