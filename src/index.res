@val external document: {..} = "document"
@val external window: {..} = "window"

let sendTextToPreview = (event) => {
    document["getElementById"]("textView")["innerText"] = event["target"]["value"]
}

let makeFontSmall = () => {
    let textView = document["getElementById"]("textView")
    let _ = textView["classList"]["add"]("text-sm")
    let _ = textView["classList"]["remove"]("text-2xl", "text-6xl")
}

let makeFontRegular = () => {
    let textView = document["getElementById"]("textView")
    let _ = textView["classList"]["add"]("text-2l")
    let _ = textView["classList"]["remove"]("text-sm", "text-6xl")
}

let makeFontLarge = () => {
    let textView = document["getElementById"]("textView")
    let _ = textView["classList"]["add"]("text-6xl")
    let _ = textView["classList"]["remove"]("text-2xl", "text-sm")
}
let attachEvent = () => {
    let textEditor = document["getElementById"]("textEditor")
    let _ = textEditor["addEventListener"]("input", sendTextToPreview)

    let selectSmall = document["getElementById"]("selectSmall")
    let _ = selectSmall["addEventListener"]("change", makeFontSmall)

    let selectRegular = document["getElementById"]("selectRegular")
    let _ = selectRegular["addEventListener"]("change", makeFontRegular)

    let slectLarge = document["getElementById"]("selectLarge")
    let _ = slectLarge["addEventListener"]("change", makeFontLarge)
}

attachEvent()