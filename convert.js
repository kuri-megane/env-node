var markdownpdf = require("markdown-pdf")

var options = {
    remarkable: {
        html: true,
        breaks: true
    },
    cssPath: "markdown.css"
}

markdownpdf(options)
  .from("input.md")
  .to("output.pdf", function () { console.log("Done") })