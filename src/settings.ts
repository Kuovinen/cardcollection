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
  SOM: {
    code: "SOM",
    path: "SOM_SCARS_OF_MIRRODIN",
    cardsTotal: 249,
    breaks: [],
    bSided: [],
  },
  NPH: {
    code: "NPH",
    path: "NPH_NEW_PHYREXIA",
    cardsTotal: 175,
    breaks: [26, 51, 77, 102, 127, 167],
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
  ZER: {
    code: "ZER",
    path: "ZER_ZENDIKAR_RISING",
    cardsTotal: 280,
    breaks: [44, 88, 132, 176, 219, 242, 265],
    bSided: [],
  },
  BFZ: {
    code: "BFZ",
    path: "BFZ_BATTLE_FOR_ZENDIKAR",
    cardsTotal: 274,
    breaks: [17, 53, 89, 126, 162, 198, 288, 249],
    bSided: [],
  },
  OAT: {
    code: "OAT",
    path: "OAT_OATH_OF_THE_GATEWATCH",
    cardsTotal: 184,
    breaks: [12, 39, 66, 93, 120, 147],
    bSided: [],
  },
  KAL: {
    code: "KAL",
    path: "KAL_KALADESH",
    cardsTotal: 274,
    breaks: [35, 70, 105, 140, 175, 190, 241],
    bSided: [],
  },
  DOM: {
    code: "DOM",
    path: "DOM_DOMINARIA",
    cardsTotal: 280,
    breaks: [39, 76, 114, 152, 189, 208, 237, 269],
    bSided: [],
  },
  WOS: {
    code: "WOS",
    path: "WOS_WAR_OF_THE_SPARK",
    cardsTotal: 275,
    breaks: [39, 75, 112, 148, 183, 243],
    bSided: [],
  },
  MRD: {
    code: "MRD",
    path: "MRD_MIRRODIN",
    cardsTotal: 140,
    breaks: [28, 56, 84, 112],
    bSided: [],
  },
  LRW: {
    code: "LRW",
    path: "LRW_LORWYN",
    cardsTotal: 245,
    breaks: [49, 98, 147, 196, 245],
    bSided: [],
  },
  THS: {
    code: "THS",
    path: "THS_THEROS",
    cardsTotal: 249,
    breaks: [37, 74, 109, 147, 184, 223],
    bSided: [],
  },
};
export default settings;
