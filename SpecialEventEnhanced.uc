/**
 * Same as SpecialEvent but includes InstigatorPlaySoundEffect state
 */
class SpecialEventEnhanced expands SpecialEvent;

// Play a sound for the trigger instigator only.
state() InstigatorPlaySoundEffect {
	function Trigger(actor Other, pawn EventInstigator) {
		Global.Trigger(self, EventInstigator);

		if (
			PlayerPawn(EventInstigator) != none   &&
			PlayerPawn(EventInstigator).bIsPlayer &&
			PlayerPawn(EventInstigator).IsA('PlayerPawn')
		) {
			PlayerPawn(EventInstigator).ClientPlaySound(Sound);
		}
	}
}