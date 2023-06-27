function rgb(r, g, b) {
  r = Math.max(0, Math.min(255, Math.round(r)));
  g = Math.max(0, Math.min(255, Math.round(g)));
  b = Math.max(0, Math.min(255, Math.round(b)));

 const redHex = r.toString(16).padStart(2, '0').toUpperCase();
  const greenHex = g.toString(16).padStart(2, '0').toUpperCase();
  const blueHex = b.toString(16).padStart(2, '0').toUpperCase();

  // Devolver el código hexadecimal
  return `${redHex}${greenHex}${blueHex}`

}