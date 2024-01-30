//package com.example.controller;
////Add required permissions in your AndroidManifest.xml file:
////<uses-permission android:name="android.permission.CAMERA" />
////<uses-feature android:name="android.hardware.camera" />
//
//import android.app.Activity;
//import android.content.Intent;
//import android.graphics.Bitmap;
//import android.provider.MediaStore;
//import android.view.View;
//import android.widget.Button;
//import android.widget.ImageView;
//
//public class Webcam extends Activity {
// private static final int CAMERA_REQUEST = 1888;
// private ImageView imageView;
//
// @Override
// public void onCreate(Bundle savedInstanceState) {
//     super.onCreate(savedInstanceState);
//     setContentView(R.layout.activity_main);
//
//     imageView = findViewById(R.id.imageView);
//     Button photoButton = findViewById(R.id.btnCapture);
//
//     photoButton.setOnClickListener(new View.OnClickListener() {
//         @Override
//         public void onClick(View v) {
//             Intent cameraIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
//             startActivityForResult(cameraIntent, CAMERA_REQUEST);
//         }
//     });
// }
//
// @Override
// protected void onActivityResult(int requestCode, int resultCode, Intent data) {
//     if (requestCode == CAMERA_REQUEST && resultCode == Activity.RESULT_OK) {
//         Bitmap photo = (Bitmap) data.getExtras().get("data");
//         imageView.setImageBitmap(photo);
//     }
// }
//}
