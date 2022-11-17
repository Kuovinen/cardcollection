/*
path:folderName
cardsToatl:numberOfCardsInSet
breaks:whichCardsAreLastInTheirRespectiveColor
bSided:cardsThatHaveAFlipSide
*/
export interface settingsType {
  [key: string]: {
    code: string;
    path: string;
    cardsTotal: number;
    breaks: number[];
    bSided: number[];
  };
}

const settings: settingsType = {
  IN1: {
    code: "IN1",
    path: "IN1_AVACYN_RESTORED",
    cardsTotal: 244,
    breaks: [41, 83, 124, 166, 207, 244],
    bSided: [],
  },
  IN4: {
    code: "IN4",
    path: "IN4_ELDRITCH_MOON",
    cardsTotal: 205,
    breaks: [12, 48, 80, 114, 149, 180],
    bSided: [],
  },
  KLD: {
    code: "KLD",
    path: "KLD_KALDHEIM",
    cardsTotal: 405,
    breaks: [39, 78, 119, 158, 199, 298, 332, 405],
    bSided: [
      15, 114, 168, 179, 181, 286, 299, 300, 302, 303, 306, 307, 308, 311, 313,
      314, 317, 318,
    ],
  },
};
export default settings;
