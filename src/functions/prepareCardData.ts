import { settingsType } from "../settings"; //just the type
function prepareCardData(settings: settingsType, setCode: string) {
  const setName: string = setCode;
  const setSettings = settings[setName];
  //breaks = last card in every column
  const numberOfColums = setSettings.breaks.length;
  //empty array based on how many color changes are demanging new columns
  const cardPaths: string[][] = Array.apply(
    null,
    Array(numberOfColums + 1)
  ).map(() => []);

  /*Goes through all the cards placing them into the 'cardPaths' array, chaning
it's inner index each time a card number matches one of the breaks*/
  function populateArray(totalCardNumber: number, cardPaths: string[][]) {
    //last card in every column
    const cardColorChangeNumbers = setSettings.breaks;
    //current column
    let column = 0;
    for (let i = 1; i <= totalCardNumber; i++) {
      console.log(column);
      cardPaths[column].push(
        `/assets/${setSettings.path}/${setSettings.code}_${i}.jpg`
      );
      if (cardColorChangeNumbers.includes(i)) {
        column++;
      }
    }
  }
  populateArray(setSettings.cardsTotal, cardPaths);
  return cardPaths;
}
export default prepareCardData;
