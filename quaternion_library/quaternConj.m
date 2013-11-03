function qConj = quaternConj(q)
%QUATERN2ROTMAT Converts a quaternion to its conjugate
%
%   qConj = quaternConj(q)
%
%   Converts a quaternion to its conjugate.
%
%   For more information see:
%   http://www.x-io.co.uk/node/8#quaternions
%
%	Date          Author          Notes
%	27/09/2011    SOH Madgwick    Initial release

    qConj = [q(:,1) -q(:,2) -q(:,3) -q(:,4)];
end
