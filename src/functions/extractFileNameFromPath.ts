function extractFileNameFromPath(path: string) {
  const regex = new RegExp("(?:.(?<!/))+$");
  const fileName: RegExpExecArray | null = regex.exec(path);
  //asign fileName (it's an array of 1 element) 0th element as key or make a
  //random one if it errored out into a NULL
  const key =
    fileName == null ? Math.floor(Math.random() * 900) + "" : fileName[0];
  const cardNumber = key.slice(4, -4);
  const data = { key, cardNumber };
  return data;
}
export default extractFileNameFromPath;
