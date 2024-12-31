
export const ONE_YEAR = 3600 * 24 * 365

export function formatValidDate(val) {
  return Math.floor(val / ONE_YEAR)
}
