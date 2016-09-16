%% channel_kurtosis


% get kurtosis values for all channels and store those with values above 5
[~, rejected_channels, channel_values, ~] = pop_rejchan(EEG)  % (EEG, 'threshold', 5);


% store channels and kurtosis values
bad_channels = zeros(numel(rejected_channels), 2);  % create blank array to store values
bad_channels(:, 1) = rejected_channels;  % channel numbers
bad_channels(:, 2) = channel_values(rejected_channels);  % channel values

bad_channels
