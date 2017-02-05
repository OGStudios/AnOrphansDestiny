/// @description initiate fake-pause (real pause comes later)
// You can write your code in this editor

if(state == statePause)	state = prevState;
else {
	prevState = state;
	state = statePause;
}