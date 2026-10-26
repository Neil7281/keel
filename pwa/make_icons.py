# Draws the Keel app icon (cobalt square, white check over ruled lines) at the sizes iOS and Android need.
import sys
from PIL import Image, ImageDraw

def icon(size, path):
    s = size / 512
    im = Image.new("RGB", (size, size), (43, 71, 200))
    d = ImageDraw.Draw(im)
    for y in (330, 390):
        d.rounded_rectangle([110 * s, (y - 9) * s, 402 * s, (y + 9) * s], radius=9 * s, fill=(143, 163, 255))
    w = int(46 * s)
    pts = [(140 * s, 200 * s), (225 * s, 280 * s), (380 * s, 120 * s)]
    d.line(pts, fill="white", width=w, joint="curve")
    for x, y in (pts[0], pts[2]):
        d.ellipse([x - w / 2, y - w / 2, x + w / 2, y + w / 2], fill="white")
    im.save(path)

out = sys.argv[1]
icon(512, f"{out}/icon-512.png")
icon(192, f"{out}/icon-192.png")
icon(180, f"{out}/apple-touch-icon.png")
