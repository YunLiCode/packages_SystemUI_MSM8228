.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static mTickerAddSpace:Z


# instance fields
.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mScreenshotDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;
    .param p4, "nId"    # I

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 122
    .local v11, "r":Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 123
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct/range {v14 .. v16}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "imageDate":Ljava/lang/String;
    const-string v13, "Screenshot_%s.png"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 126
    new-instance v13, Ljava/io/File;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v14}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    const-string v15, "Screenshots"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 128
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 132
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 133
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 135
    .local v5, "iconSize":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    if-ge v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 136
    .local v12, "shortSide":I
    :goto_0
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    invoke-static {v12, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 137
    .local v10, "preview":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 139
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 140
    .local v4, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v13, 0x3e800000

    invoke-virtual {v4, v13}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 141
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v13, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 142
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    .local v7, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v13, v12, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 145
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v13, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 146
    const v13, 0x40ffffff

    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 147
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    const/4 v13, 0x1

    invoke-static {v10, v5, v5, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 152
    .local v3, "croppedIcon":Landroid/graphics/Bitmap;
    sget-boolean v13, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    sput-boolean v13, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 153
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 154
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 155
    new-instance v14, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0a0030

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v13, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v13, :cond_2

    const-string v13, " "

    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f0a0031

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f0a0032

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f020131

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 163
    new-instance v13, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v13}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v13, v10}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 168
    .local v8, "n":Landroid/app/Notification;
    iget v13, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x20

    iput v13, v8, Landroid/app/Notification;->flags:I

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p4

    invoke-virtual {v13, v0, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 177
    return-void

    .line 135
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v3    # "croppedIcon":Landroid/graphics/Bitmap;
    .end local v4    # "desat":Landroid/graphics/ColorMatrix;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "n":Landroid/app/Notification;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "preview":Landroid/graphics/Bitmap;
    .end local v12    # "shortSide":I
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    goto/16 :goto_0

    .line 152
    .restart local v2    # "c":Landroid/graphics/Canvas;
    .restart local v3    # "croppedIcon":Landroid/graphics/Bitmap;
    .restart local v4    # "desat":Landroid/graphics/ColorMatrix;
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "preview":Landroid/graphics/Bitmap;
    .restart local v12    # "shortSide":I
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 155
    :cond_2
    const-string v13, ""

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 19
    .param p1, "params"    # [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    .line 181
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    const/4 v14, 0x0

    .line 256
    :goto_0
    return-object v14

    .line 182
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 183
    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v14}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 184
    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v14}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 185
    const/4 v14, 0x0

    goto :goto_0

    .line 190
    :cond_1
    const/4 v14, -0x2

    invoke-static {v14}, Landroid/os/Process;->setThreadPriority(I)V

    .line 192
    const/4 v14, 0x0

    aget-object v14, p1, v14

    iget-object v3, v14, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 193
    .local v3, "context":Landroid/content/Context;
    const/4 v14, 0x0

    aget-object v14, p1, v14

    iget-object v5, v14, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 194
    .local v5, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 198
    .local v7, "r":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 201
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v13, "values":Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 203
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v14, "_data"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v14, "title"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v14, "_display_name"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v14, "datetaken"

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    const-string v14, "date_added"

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v14, "date_modified"

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string v14, "mime_type"

    const-string v15, "image/png"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v14, "width"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v14, "height"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 214
    .local v12, "uri":Landroid/net/Uri;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "hh:mma, MMM dd, yyyy"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v16, v0

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 216
    .local v11, "subjectDate":Ljava/lang/String;
    const-string v14, "Screenshot (%s)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "subject":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.SEND"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v9, "sharingIntent":Landroid/content/Intent;
    const-string v14, "image/png"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v14, "android.intent.extra.STREAM"

    invoke-virtual {v9, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 220
    const-string v14, "android.intent.extra.SUBJECT"

    invoke-virtual {v9, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/4 v14, 0x0

    invoke-static {v9, v14}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 223
    .local v2, "chooserIntent":Landroid/content/Intent;
    const v14, 0x10008000

    invoke-virtual {v2, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v15, 0x7f02001e

    const v16, 0x10404f4

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/high16 v18, 0x10000000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 231
    invoke-virtual {v8, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 232
    .local v6, "out":Ljava/io/OutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v5, v14, v15, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 233
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 234
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 237
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 238
    const-string v14, "_size"

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    const/4 v14, 0x0

    aget-object v14, p1, v14

    iput-object v12, v14, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 242
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 243
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const/4 v15, 0x0

    iput v15, v14, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v2    # "chooserIntent":Landroid/content/Intent;
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "sharingIntent":Landroid/content/Intent;
    .end local v10    # "subject":Ljava/lang/String;
    .end local v11    # "subjectDate":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "values":Landroid/content/ContentValues;
    :goto_1
    if-eqz v5, :cond_2

    .line 253
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    :cond_2
    const/4 v14, 0x0

    aget-object v14, p1, v14

    goto/16 :goto_0

    .line 244
    :catch_0
    move-exception v4

    .line 247
    .local v4, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v14}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 248
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const/4 v15, 0x1

    iput v15, v14, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 6
    .param p1, "params"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    const/4 v5, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 263
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 264
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 293
    :goto_0
    return-void

    .line 268
    :cond_0
    iget v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v3, :cond_1

    .line 270
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 291
    :goto_1
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 292
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 276
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "launchIntent":Landroid/content/Intent;
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v4, "image/png"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v4, 0x7f0a0033

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0a0034

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v4, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 287
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 288
    .local v1, "n":Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 289
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
