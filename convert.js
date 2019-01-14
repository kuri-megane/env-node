var markdownpdf = require("markdown-pdf")

var options = {
    remarkable: {
        html: true,
        breaks: true
    },
    cssPath: "/markdown-pdf/markdown.css"
}

markdownpdf(options)
  .from("/app/input.md")
  .to("/app/output.pdf", function () { console.log("Done") })