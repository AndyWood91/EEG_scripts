%% rename_event_types

% exploration
% class(EEG)  % EEG is a structure array
% class(EEG.event)  % event is a structure array nested within EEG


event_types = unique({EEG.event.type})  % find unique type values


% rename type values
for a = 1:numel(EEG.event)  % for each event
    
    if strcmp(EEG.event(a).type, '11') || strcmp(EEG.event(a).type, '12')  % if the type is 11 or 12
        EEG.event(a).type = '71';  % predictive cue
    elseif strcmp(EEG.event(a).type, '21') || strcmp(EEG.event(a).type, '22')  % if the type is 21 or 22
        EEG.event(a).type = '81';  % non-predictive cue
    else
        % do nothing
    end
    
end

event_types = unique({EEG.event.type})  % check changes

% TODO: where does this need to be saved to?
