% Load pretrained detector
pretrained = load('darknet19-coco.mat');
detector =  pretrained.yolov2Detector;

% Read test image.
img = imread('C:\Users\Asus\OneDrive\Desktop\sanav\images matlab\bench.jpg');

% Detect objects in the test image.
[boxes, scores, labels] = detect(detector, img);

disp(boxes);
disp(scores);
disp(labels);

% Visualize detection results.
img = insertObjectAnnotation(img, 'rectangle', boxes, scores);
figure, imshow(img)