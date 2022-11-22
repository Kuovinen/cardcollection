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
  MIB: {
    code: "MIB",
    path: "MIB_MIRRODIN_BESIEGED",
    cardsTotal: 155,
    breaks: [19, 38, 57, 76, 95, 144],
    bSided: [],
  },
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
  IN5: {
    code: "IN5",
    path: "IN5_SHADOW_OVER_INNISTRAD",
    cardsTotal: 297,
    breaks: [48, 96, 144, 192, 240, 269],
    bSided: [],
  },
  GOR: {
    code: "GOR",
    path: "GOR_GUILDS_OF_RAVNICA",
    cardsTotal: 259,
    breaks: [30, 60, 90, 120, 150, 230],
    bSided: [],
  },
  MAO: {
    code: "MAO",
    path: "MAO_MAGIC_ORIGINS",
    cardsTotal: 272,
    breaks: [42, 84, 126, 167, 209],
    bSided: [],
  },
  AMO: {
    code: "AMO",
    path: "AMO_AMONKHET",
    cardsTotal: 279,
    breaks: [39, 77, 116, 155, 193, 224, 269],
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
