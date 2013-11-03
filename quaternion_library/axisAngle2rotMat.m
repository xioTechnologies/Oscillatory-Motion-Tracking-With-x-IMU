function R = axisAngle2rotMat(axis, angle)
%AXISANGLE2ROTMAT Converts an axis-angle orientation to a rotation matrix
%
%   q = axisAngle2rotMat(axis, angle)
%
%   Converts and axis-angle orientation to a rotation matrix where a 3D
%   rotation is described by an angular rotation around axis defined by a
%   vector.
%
%   For more information see:
%   http://www.x-io.co.uk/node/8#quaternions
%
%	Date          Author          Notes
%	27/09/2011    SOH Madgwick    Initial release

    kx = axis(:,1);
    ky = axis(:,2);
    kz = axis(:,3);
    cT = cos(angle);
    sT = sin(angle);
    vT = 1 - cos(angle);

    R(1,1,:) = kx.*kx.*vT + cT;
    R(1,2,:) = kx.*ky.*vT - kz.*sT;
    R(1,3,:) = kx.*kz.*vT + ky.*sT;

    R(2,1,:) = kx.*ky.*vT + kz.*sT;
    R(2,2,:) = ky.*ky.*vT + cT;
    R(2,3,:) = ky.*kz.*vT - kx.*sT;

    R(3,1,:) = kx.*kz.*vT - ky.*sT;
    R(3,2,:) = ky.*kz.*vT + kx.*sT;
    R(3,3,:) = kz.*kz.*vT + cT;
end

