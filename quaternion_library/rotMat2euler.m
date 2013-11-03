function euler = rotMat2euler(R)
%ROTMAT2EULER Converts a rotation matrix orientation to ZYX Euler angles
%
%   euler = rotMat2euler(R)
%
%   Converts a rotation matrix orientation to ZYX Euler angles where phi is
%   a rotation around X, theta around Y and psi around Z.
%
%   For more information see:
%   http://www.x-io.co.uk/node/8#quaternions
%
%   Date          Author          Notes
%   27/09/2011    SOH Madgwick    Initial release

    phi = atan2(R(3,2,:), R(3,3,:) );
    theta = -atan(R(3,1,:) ./ sqrt(1-R(3,1,:).^2) );
    psi = atan2(R(2,1,:), R(1,1,:) );

    euler = [phi(1,:)' theta(1,:)' psi(1,:)'];
end

