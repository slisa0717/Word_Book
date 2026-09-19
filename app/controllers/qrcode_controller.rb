class QrcodeController < ApplicationController
  def index
    @text = params[:text].presence || "https://example.com"
  end

  def show
    text = params[:text].presence || "https://example.com"

    qr = RQRCode::QRCode.new(text)
    png = qr.as_png(
      resize_gte_to: false,
      resize_exactly_to: false,
      fill: "white",
      color: "black",
      size: 240,
      border_modules: 4,
      module_px_size: 6,
      file: nil
    )

    send_data png.to_blob, type: "image/png", disposition: "inline"
  end
end
