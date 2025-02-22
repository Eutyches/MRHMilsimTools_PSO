/*
Function name:MRH_fnc_MilsimTools_RHS_CBPS_
Author: Mr H.
Description:
Return value:
Public:
Parameters:
Example(s):
call MRH_fnc_MilsimTools_RHS_CBPS_;
*/
#include "MRH_C_Path.hpp"

_allCFGComps = [(missionConfigFile >> "cfgMRHcompositions")]call BIS_fnc_getCfgSubClasses;
_resultARRAY = [];
{
	_isCBPScomp = getNumber (missionConfigFile>>"cfgMRHcompositions">> _x >> "isForCBPSFlag");
	if (_isCBPScomp isEqualTo 1) then {
	private _displayName = getText (missionConfigFile>>"cfgMRHcompositions">> _x >> "displayName");
	private _array = [_displayName,_x];
	_resultARRAY pushBackUnique _array;
	};
} forEach _allCFGComps;
_resultARRAY