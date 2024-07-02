
declare class WrappedBuilder< Args extends Object[]> {
  builder: (...args: Args) => void;

  constructor(builder: (...args: Args) => void);
}


// @ts-ignore
declare function wrapBuilder< Args extends Object[]>(builder: (...args: Args) => void): WrappedBuilder;