.class public Lcom/android/camera/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/Storage$StorageListener;
    }
.end annotation


# static fields
.field public static BUCKET_ID:I

.field public static DIRECTORY:Ljava/lang/String;

.field public static FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

.field public static HIDEDIRECTORY:Ljava/lang/String;

.field private static final LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

.field public static PRIMARY_BUCKET_ID:I

.field private static final PRIMARY_STORAGE_PATH:Ljava/lang/String;

.field private static RAW_DIRECTORY:Ljava/lang/String;

.field public static SECONDARY_BUCKET_ID:I

.field private static SECONDARY_STORAGE_PATH:Ljava/lang/String;

.field private static sCurrentStoragePath:Ljava/lang/String;

.field private static sStorageListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/storage/Storage$StorageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "SECONDARY_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 72
    sget-boolean v1, Lcom/android/camera/Device;->IS_HM:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    :goto_0
    sput-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    sput-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/DCIM/Camera/raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/storage/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/DCIM/Camera/.ubifocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    .line 79
    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sput v1, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 80
    sput v1, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 82
    sput v1, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v1, Lcom/android/camera/storage/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "unUsedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    :cond_0
    return-void

    .line 72
    .end local v0    # "unUsedFile":Ljava/io/File;
    :cond_1
    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 439
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 440
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string/jumbo v2, "_display_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".dng"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string/jumbo v2, "media_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    const-string/jumbo v2, "_data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 453
    .local v0, "th":Ljava/lang/Exception;
    const-string/jumbo v2, "CameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to write MediaStore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZLcom/android/camera/PictureInfo;)Landroid/net/Uri;
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "jpeg"    # [B
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "mirror"    # Z
    .param p10, "info"    # Lcom/android/camera/PictureInfo;

    .prologue
    .line 171
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v12, p10

    .line 170
    invoke-static/range {v0 .. v12}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZLcom/android/camera/PictureInfo;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addImage(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 261
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 262
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 264
    :cond_1
    const/16 v16, 0x0

    .line 266
    .local v16, "file":Ljava/io/File;
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16    # "file":Ljava/io/File;
    .local v17, "file":Ljava/io/File;
    move-object/from16 v16, v17

    .line 271
    .end local v17    # "file":Ljava/io/File;
    :goto_0
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v8

    const-string/jumbo v13, "image/jpeg"

    move-object v3, v2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p2

    move-object/from16 v10, p1

    move/from16 v11, p6

    move/from16 v12, p7

    .line 273
    invoke-static/range {v2 .. v13}, Lcom/android/camera/storage/Storage;->getContentValuesForData(Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v14

    .line 276
    .local v14, "contentValues":Landroid/content/ContentValues;
    const/16 v19, 0x0

    .line 278
    .local v19, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 285
    .end local v19    # "uri":Landroid/net/Uri;
    :goto_1
    invoke-static/range {p0 .. p1}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    return-object v19

    .line 267
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v14    # "contentValues":Landroid/content/ContentValues;
    .restart local v16    # "file":Ljava/io/File;
    :catch_0
    move-exception v15

    .line 268
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    const-string/jumbo v3, "CameraStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to open panorama file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "file":Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    return-object v3

    .line 279
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v14    # "contentValues":Landroid/content/ContentValues;
    .restart local v19    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v18

    .line 280
    .local v18, "th":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    const-string/jumbo v3, "CameraStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZLcom/android/camera/PictureInfo;)Landroid/net/Uri;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "jpeg"    # [B
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "mirror"    # Z
    .param p10, "isHide"    # Z
    .param p11, "isMap"    # Z
    .param p12, "info"    # Lcom/android/camera/PictureInfo;

    .prologue
    .line 178
    move-object/from16 v0, p1

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-static {v0, v1, v2}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v12

    .line 179
    .local v12, "path":Ljava/lang/String;
    move-object/from16 v0, p6

    move-object/from16 v1, p12

    invoke-static {v0, v1}, Lcom/android/camera/storage/Storage;->getExifWithComment([BLcom/android/camera/PictureInfo;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v19

    .line 180
    .local v19, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    const/16 v22, 0x0

    .line 181
    .local v22, "out":Ljava/io/FileOutputStream;
    const/16 v21, 0x0

    .line 183
    .local v21, "isException":Z
    :try_start_0
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .local v23, "out":Ljava/io/FileOutputStream;
    if-eqz p9, :cond_5

    .line 185
    :try_start_1
    invoke-static/range {p6 .. p6}, Lcom/android/camera/storage/Storage;->flipJpeg([B)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 186
    .local v16, "b":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_3

    .line 187
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeToOutStream(Lcom/android/gallery3d/exif/ExifInterface;Landroid/graphics/Bitmap;Ljava/io/FileOutputStream;)V

    .line 188
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->flush()V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 190
    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v12, v0, v1, v4, v5}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .end local v16    # "b":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v23, :cond_0

    .line 204
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->flush()V

    .line 205
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 212
    :cond_0
    :goto_1
    sget-boolean v4, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v4, :cond_1

    .line 213
    invoke-static {v12}, Lcom/android/camera/storage/Storage;->checkExif(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v22, v23

    .line 216
    .end local v23    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    if-eqz v21, :cond_8

    const/4 v4, 0x0

    return-object v4

    .line 193
    .restart local v16    # "b":Landroid/graphics/Bitmap;
    .restart local v23    # "out":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, p6

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeToOutStream(Lcom/android/gallery3d/exif/ExifInterface;[BLjava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 198
    .end local v16    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/Exception;
    move-object/from16 v22, v23

    .line 199
    .end local v23    # "out":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "Failed to write image"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    const/16 v21, 0x1

    .line 203
    if-eqz v22, :cond_4

    .line 204
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->flush()V

    .line 205
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 212
    :cond_4
    :goto_4
    sget-boolean v4, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v4, :cond_2

    .line 213
    invoke-static {v12}, Lcom/android/camera/storage/Storage;->checkExif(Ljava/lang/String;)V

    goto :goto_2

    .line 196
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v23    # "out":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, p6

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeToOutStream(Lcom/android/gallery3d/exif/ExifInterface;[BLjava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v4

    move-object/from16 v22, v23

    .line 203
    .end local v23    # "out":Ljava/io/FileOutputStream;
    :goto_5
    if-eqz v22, :cond_6

    .line 204
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->flush()V

    .line 205
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 212
    :cond_6
    :goto_6
    sget-boolean v5, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v5, :cond_7

    .line 213
    invoke-static {v12}, Lcom/android/camera/storage/Storage;->checkExif(Ljava/lang/String;)V

    .line 201
    :cond_7
    throw v4

    .line 207
    .restart local v23    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v18

    .line 208
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "Failed to flush/close stream"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/16 v21, 0x1

    goto :goto_1

    .line 207
    .end local v23    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v18

    .line 208
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "Failed to flush/close stream"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/16 v21, 0x1

    goto :goto_4

    .line 207
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v18

    .line 208
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "CameraStorage"

    const-string/jumbo v6, "Failed to flush/close stream"

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/16 v21, 0x1

    goto :goto_6

    .line 220
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_8
    if-eqz p11, :cond_9

    .line 221
    invoke-static/range {p6 .. p6}, Lcom/android/camera/Util;->isProduceFocusInfoSuccess([B)Z

    move-result v20

    .line 222
    .local v20, "focusSuccess":Z
    invoke-static/range {p6 .. p8}, Lcom/android/camera/Util;->getCenterFocusDepthIndex([BII)I

    move-result v17

    .line 223
    .local v17, "centerFocused":I
    if-eqz v20, :cond_c

    const-string/jumbo v4, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    :goto_7
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 224
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v12

    .line 225
    new-instance v5, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v20, :cond_d

    const-string/jumbo v4, "_"

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move/from16 v0, p10

    invoke-static {v4, v0, v6}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 227
    if-nez v20, :cond_9

    .line 228
    invoke-static/range {p1 .. p1}, Lcom/android/camera/storage/Storage;->deleteImage(Ljava/lang/String;)V

    .line 231
    .end local v17    # "centerFocused":I
    .end local v20    # "focusSuccess":Z
    :cond_9
    if-eqz p10, :cond_a

    if-eqz p11, :cond_e

    .line 234
    :cond_a
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 235
    .local v10, "fileLength":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 236
    const-string/jumbo v15, "image/jpeg"

    move-object/from16 v4, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v13, p7

    move/from16 v14, p8

    .line 235
    invoke-static/range {v4 .. v15}, Lcom/android/camera/storage/Storage;->getContentValuesForData(Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v26

    .line 238
    .local v26, "values":Landroid/content/ContentValues;
    const/16 v25, 0x0

    .line 240
    .local v25, "uri":Landroid/net/Uri;
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v25

    .line 252
    .end local v25    # "uri":Landroid/net/Uri;
    :goto_9
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v4

    if-nez v4, :cond_b

    .line 253
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    :cond_b
    return-object v25

    .line 223
    .end local v10    # "fileLength":J
    .end local v26    # "values":Landroid/content/ContentValues;
    .restart local v17    # "centerFocused":I
    .restart local v20    # "focusSuccess":Z
    :cond_c
    const-string/jumbo v4, "_UBIFOCUS_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_7

    .line 225
    :cond_d
    const-string/jumbo v4, "_UBIFOCUS_"

    goto/16 :goto_8

    .line 231
    .end local v17    # "centerFocused":I
    .end local v20    # "focusSuccess":Z
    :cond_e
    const/4 v4, 0x0

    return-object v4

    .line 241
    .restart local v10    # "fileLength":J
    .restart local v25    # "uri":Landroid/net/Uri;
    .restart local v26    # "values":Landroid/content/ContentValues;
    :catch_4
    move-exception v24

    .line 247
    .local v24, "th":Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    const-string/jumbo v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to write MediaStore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 201
    .end local v10    # "fileLength":J
    .end local v24    # "th":Ljava/lang/Exception;
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v26    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v4

    goto/16 :goto_5

    .line 198
    .restart local v22    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    goto/16 :goto_3
.end method

.method private static checkExif(Ljava/lang/String;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 755
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 756
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v2, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 757
    .local v2, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 758
    const-string/jumbo v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "comment value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getXiaomiComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .end local v2    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .end local v3    # "in":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "read tag=IOException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 759
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 760
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "read tag=FileNotFoundException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static createDirectoryIfNeeded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 568
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 572
    .local v0, "parentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    return v1

    .line 578
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    return v1
.end method

.method public static deleteFromCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 474
    invoke-static {p0, p1}, Lcom/android/camera/storage/Storage;->getDeleteFromCloudIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    return-void
.end method

.method public static deleteImage(Ljava/lang/String;)V
    .locals 7
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "hideFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 316
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 317
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 315
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static flipJpeg([B)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "jpeg"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v11, -0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 491
    if-nez p0, :cond_0

    return-object v10

    .line 492
    :cond_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 493
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 494
    array-length v1, p0

    invoke-static {p0, v2, v1, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 495
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 496
    .local v5, "m":Landroid/graphics/Matrix;
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 497
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    .line 496
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 501
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 500
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 501
    const/4 v6, 0x1

    .line 500
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 503
    .local v7, "flip":Landroid/graphics/Bitmap;
    if-eq v7, v0, :cond_1

    .line 504
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, v11, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v11, :cond_3

    .line 508
    :cond_2
    return-object v10

    .line 510
    :cond_3
    return-object v7

    .line 511
    .end local v7    # "flip":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 512
    .local v9, "t":Ljava/lang/Exception;
    const-string/jumbo v1, "CameraStorage"

    const-string/jumbo v2, "Failed to rotate thumbnail"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    return-object v10
.end method

.method public static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string/jumbo v0, ".jpg"

    invoke-static {p0, v0}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2f

    .line 534
    if-nez p1, :cond_0

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 536
    :cond_0
    const-string/jumbo v0, ".yuv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 539
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFilepath(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "isHide"    # Z
    .param p2, "isMap"    # Z

    .prologue
    .line 526
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const/4 v0, 0x0

    return-object v0

    .line 529
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string/jumbo v0, ".y"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ".jpg"

    goto :goto_1
.end method

.method public static generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableSpace()J
    .locals 2

    .prologue
    .line 616
    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAvailableSpace(Ljava/lang/String;)J
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, -0x1

    .line 583
    if-nez p0, :cond_0

    .line 584
    return-wide v10

    .line 586
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    .local v2, "dir":Ljava/io/File;
    const/16 v7, 0x1ff

    invoke-static {v2, v7, v8, v8}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    move-result v4

    .line 588
    .local v4, "needScan":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 592
    if-eqz v4, :cond_1

    const-string/jumbo v7, "/DCIM/Camera"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 595
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "miui.intent.action.MEDIA_SCANNER_SCAN_FOLDER"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v5, "scanIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 597
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 602
    .end local v5    # "scanIntent":Landroid/content/Intent;
    :cond_1
    :try_start_0
    sget-object v7, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 603
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/camera/Util;->createFile(Ljava/io/File;)Z

    .line 605
    :cond_2
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 606
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v10, v7

    mul-long v0, v8, v10

    .line 607
    .local v0, "available":J
    invoke-static {v0, v1}, Lcom/android/camera/storage/Storage;->setLeftSpace(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    return-wide v0

    .line 589
    .end local v0    # "available":J
    .end local v6    # "stat":Landroid/os/StatFs;
    :cond_3
    return-wide v10

    .line 609
    :catch_0
    move-exception v3

    .line 610
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "CameraStorage"

    const-string/jumbo v8, "Fail to access external storage"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    const-wide/16 v8, -0x3

    return-wide v8
.end method

.method private static getContentValuesForData(Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "jpegLength"    # J
    .param p8, "path"    # Ljava/lang/String;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 293
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v1, "_display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 296
    const-string/jumbo v1, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 298
    :cond_0
    const-string/jumbo v1, "mime_type"

    invoke-virtual {v0, v1, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v1, "orientation"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string/jumbo v1, "_data"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v1, "_size"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 302
    const-string/jumbo v1, "width"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string/jumbo v1, "height"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    if-eqz p4, :cond_1

    .line 306
    const-string/jumbo v1, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 307
    const-string/jumbo v1, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 309
    :cond_1
    return-object v0
.end method

.method private static getDeleteFromCloudIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.gallery.DELETE_FROM_CLOUD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.miui.gallery"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 481
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 482
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 483
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.miui.gallery"

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 485
    :cond_0
    const-string/jumbo v3, "extra_file_path"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    return-object v0
.end method

.method public static getExifWithComment([BLcom/android/camera/PictureInfo;)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 5
    .param p0, "jpeg"    # [B
    .param p1, "info"    # Lcom/android/camera/PictureInfo;

    .prologue
    const/4 v4, 0x0

    .line 740
    if-eqz p1, :cond_0

    .line 742
    :try_start_0
    new-instance v1, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 743
    .local v1, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-virtual {v1, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 744
    invoke-virtual {p1}, Lcom/android/camera/PictureInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    return-object v1

    .line 746
    .end local v1    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "CameraStorage"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v4
.end method

.method public static getLeftSpace()J
    .locals 5

    .prologue
    .line 722
    sget-object v2, Lcom/android/camera/storage/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 723
    .local v0, "left":J
    const-string/jumbo v2, "CameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLeftSpace() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-wide v0
.end method

.method private static getSaveToCloudIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.miui.gallery"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 465
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 466
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 467
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.miui.gallery"

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 469
    :cond_0
    const-string/jumbo v3, "extra_file_path"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    return-object v0
.end method

.method public static hasSecondaryStorage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 641
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSecondaryStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static initStorage(Landroid/content/Context;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSecondaryStorage()Z

    move-result v23

    if-nez v23, :cond_0

    return-void

    .line 115
    :cond_0
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x17

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    .line 117
    const-string/jumbo v23, "storage"

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageManager;

    .line 119
    .local v15, "storageManager":Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v24, "getVolumes"

    const-string/jumbo v25, "()Ljava/util/List;"

    invoke-static/range {v23 .. v25}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v11

    .line 120
    .local v11, "getVolsMethod":Lmiui/reflect/Method;
    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getClass()Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v15, v1}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 121
    .local v19, "vols":Ljava/lang/Object;
    const-string/jumbo v23, "android.os.storage.VolumeInfo"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    .line 123
    .local v20, "volumeInfoClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    .line 124
    .local v14, "sdcardVolume":Ljava/lang/Object;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/util/List;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 125
    const-string/jumbo v23, "getType"

    const-string/jumbo v24, "()I"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v10

    .line 126
    .local v10, "getTypeMethod":Lmiui/reflect/Method;
    const-string/jumbo v23, "isMountedWritable"

    const-string/jumbo v24, "()Z"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v22

    .line 127
    .local v22, "writeableMethod":Lmiui/reflect/Method;
    const-string/jumbo v23, "getDisk"

    const-string/jumbo v24, "()Landroid/os/storage/DiskInfo;"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v8

    .line 128
    .local v8, "getDiskMethod":Lmiui/reflect/Method;
    const-string/jumbo v23, "TYPE_PUBLIC"

    const-string/jumbo v24, "I"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v21

    .line 129
    .local v21, "volumeInfoField":Lmiui/reflect/Field;
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 131
    .local v16, "typePublic":I
    const-string/jumbo v23, "android.os.storage.DiskInfo"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 132
    .local v5, "diskInfoClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v23, "isSd"

    const-string/jumbo v24, "()Z"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v5, v0, v1}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v12

    .line 134
    .local v12, "isSdMethod":Lmiui/reflect/Method;
    const/4 v4, 0x0

    .line 135
    .local v4, "disk":Ljava/lang/Object;
    check-cast v19, Ljava/util/List;

    .end local v19    # "vols":Ljava/lang/Object;
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v4    # "disk":Ljava/lang/Object;
    .local v18, "vol$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 136
    .local v17, "vol":Ljava/lang/Object;
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 137
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v23

    .line 136
    if-eqz v23, :cond_1

    .line 138
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 139
    .restart local v4    # "disk":Ljava/lang/Object;
    if-eqz v4, :cond_1

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v5, v4, v0}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 140
    move-object/from16 v14, v17

    .line 147
    .end local v4    # "disk":Ljava/lang/Object;
    .end local v5    # "diskInfoClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "getDiskMethod":Lmiui/reflect/Method;
    .end local v10    # "getTypeMethod":Lmiui/reflect/Method;
    .end local v12    # "isSdMethod":Lmiui/reflect/Method;
    .end local v14    # "sdcardVolume":Ljava/lang/Object;
    .end local v16    # "typePublic":I
    .end local v17    # "vol":Ljava/lang/Object;
    .end local v18    # "vol$iterator":Ljava/util/Iterator;
    .end local v21    # "volumeInfoField":Lmiui/reflect/Field;
    .end local v22    # "writeableMethod":Lmiui/reflect/Method;
    :cond_2
    if-eqz v14, :cond_3

    .line 148
    const-string/jumbo v23, "getPath"

    const-string/jumbo v24, "()Ljava/io/File;"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v9

    .line 149
    .local v9, "getPathMethod":Lmiui/reflect/Method;
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v14, v1}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 150
    .local v7, "file":Ljava/io/File;
    if-nez v7, :cond_4

    const/4 v13, 0x0

    .line 151
    .local v13, "sdcardPath":Ljava/lang/String;
    :goto_0
    if-eqz v13, :cond_3

    .line 152
    const-string/jumbo v23, "CameraStorage"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "initStorage sd="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sput-object v13, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 154
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/DCIM/Camera"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v23

    sput v23, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "getPathMethod":Lmiui/reflect/Method;
    .end local v11    # "getVolsMethod":Lmiui/reflect/Method;
    .end local v13    # "sdcardPath":Ljava/lang/String;
    .end local v15    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v20    # "volumeInfoClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->readSystemPriorityStorage()V

    .line 113
    return-void

    .line 150
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "getPathMethod":Lmiui/reflect/Method;
    .restart local v11    # "getVolsMethod":Lmiui/reflect/Method;
    .restart local v15    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v20    # "volumeInfoClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    goto :goto_0

    .line 158
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "getPathMethod":Lmiui/reflect/Method;
    .end local v11    # "getVolsMethod":Lmiui/reflect/Method;
    .end local v20    # "volumeInfoClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    .line 159
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "CameraStorage"

    const-string/jumbo v24, "initStorage Exception "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isLowStorageAtLastPoint()Z
    .locals 4

    .prologue
    .line 718
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowStorageSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 637
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneStoragePriority()Z
    .locals 2

    .prologue
    .line 708
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRelatedStorage(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 694
    if-eqz p0, :cond_2

    .line 695
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 697
    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 698
    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 696
    :cond_0
    :goto_0
    return v1

    .line 697
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public static isUsePhoneStorage()Z
    .locals 2

    .prologue
    .line 704
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newImage(Landroid/content/Context;Ljava/lang/String;JIII)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "orientation"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 325
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "path":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 328
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string/jumbo v4, "orientation"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string/jumbo v4, "_data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string/jumbo v4, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string/jumbo v4, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string/jumbo v4, "mime_type"

    const-string/jumbo v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v2, 0x0

    .line 337
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 338
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "th":Ljava/lang/Exception;
    const-string/jumbo v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to new image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readSystemPriorityStorage()V
    .locals 2

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "isPriorityStorage":Z
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    invoke-static {}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->isPriorityStorage()Z

    move-result v0

    .line 685
    .local v0, "isPriorityStorage":Z
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setPriorityStoragePreference(Z)V

    .line 687
    .end local v0    # "isPriorityStorage":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 688
    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 687
    :goto_0
    sput-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    .line 689
    sget-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    sput-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 690
    invoke-static {}, Lcom/android/camera/storage/Storage;->updateDirectory()V

    .line 680
    return-void

    .line 688
    :cond_1
    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 458
    invoke-static {p0, p1}, Lcom/android/camera/storage/Storage;->getSaveToCloudIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    return-void
.end method

.method public static secondaryStorageMounted()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 645
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static setLeftSpace(J)V
    .locals 4
    .param p0, "left"    # J

    .prologue
    .line 728
    sget-object v0, Lcom/android/camera/storage/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 729
    const-string/jumbo v0, "CameraStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLeftSpace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return-void
.end method

.method public static setStorageListener(Lcom/android/camera/storage/Storage$StorageListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/camera/storage/Storage$StorageListener;

    .prologue
    .line 712
    if-eqz p0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/camera/storage/Storage;->sStorageListener:Ljava/lang/ref/WeakReference;

    .line 711
    :cond_0
    return-void
.end method

.method public static switchStoragePathIfNeeded()V
    .locals 6

    .prologue
    .line 653
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 654
    sget-object v0, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    .line 655
    .local v0, "firstConsiderPath":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 656
    .local v2, "secondCondiderPath":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    sget-object v4, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    sget-object v2, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    .line 660
    :cond_0
    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 662
    .local v1, "oldPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 663
    sput-object v0, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 670
    :goto_0
    sget-object v3, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 671
    invoke-static {}, Lcom/android/camera/storage/Storage;->updateDirectory()V

    .line 672
    sget-object v3, Lcom/android/camera/storage/Storage;->sStorageListener:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/camera/storage/Storage;->sStorageListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 673
    sget-object v3, Lcom/android/camera/storage/Storage;->sStorageListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/storage/Storage$StorageListener;

    invoke-interface {v3}, Lcom/android/camera/storage/Storage$StorageListener;->onStoragePathChanged()V

    .line 676
    :cond_1
    const-string/jumbo v3, "CameraStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Storage path is switched path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_2
    return-void

    .line 664
    :cond_3
    invoke-static {v2}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 665
    sput-object v2, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 667
    :cond_4
    return-void
.end method

.method private static updateDirectory()V
    .locals 2

    .prologue
    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Camera/raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Camera/.ubifocus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    .line 736
    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    .line 732
    return-void
.end method

.method public static updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jpeg"    # [B
    .param p2, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "oldTitle"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static/range {p4 .. p4}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 354
    .local v12, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p9, :cond_6

    invoke-static/range {p9 .. p9}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 355
    .local v23, "tmpPath":Ljava/lang/String;
    const/16 v19, 0x0

    .line 356
    .local v19, "out":Ljava/io/FileOutputStream;
    const-wide/16 v10, 0x0

    .line 358
    .local v10, "fileLength":J
    if-eqz p1, :cond_8

    .line 361
    :try_start_0
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .local v20, "out":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_7

    .line 364
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v19, v20

    .line 380
    .end local v20    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    if-eqz v19, :cond_1

    .line 381
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->flush()V

    .line 382
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    :cond_1
    :goto_2
    new-instance v22, Ljava/io/File;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v22, "tmpFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 390
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 393
    if-eqz p2, :cond_2

    if-eqz p9, :cond_2

    .line 395
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-static/range {p9 .. p9}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 401
    :cond_2
    :goto_3
    sget-boolean v4, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v4, :cond_3

    .line 402
    invoke-static {v12}, Lcom/android/camera/storage/Storage;->checkExif(Ljava/lang/String;)V

    .line 407
    :cond_3
    const/16 v24, 0x0

    .line 408
    .local v24, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_f

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    .line 410
    const-string/jumbo v15, "image/jpeg"

    move-object/from16 v4, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v13, p7

    move/from16 v14, p8

    .line 409
    invoke-static/range {v4 .. v15}, Lcom/android/camera/storage/Storage;->getContentValuesForData(Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v24

    .line 421
    .local v24, "values":Landroid/content/ContentValues;
    :cond_4
    :goto_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 427
    if-eqz p9, :cond_5

    .line 428
    invoke-static/range {p9 .. p9}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 429
    .local v18, "oldPath":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/camera/storage/Storage;->deleteFromCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    .end local v18    # "oldPath":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    const/4 v4, 0x1

    return v4

    .end local v10    # "fileLength":J
    .end local v22    # "tmpFile":Ljava/io/File;
    .end local v23    # "tmpPath":Ljava/lang/String;
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_6
    move-object v4, v12

    .line 354
    goto/16 :goto_0

    .line 365
    .restart local v10    # "fileLength":J
    .restart local v20    # "out":Ljava/io/FileOutputStream;
    .restart local v23    # "tmpPath":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 366
    .local v16, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "Failed to rewrite Exif"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/FileOutputStream;
    .local v19, "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 370
    .end local v16    # "e":Ljava/io/IOException;
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .restart local v20    # "out":Ljava/io/FileOutputStream;
    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/FileOutputStream;
    .restart local v19    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 372
    .local v19, "out":Ljava/io/FileOutputStream;
    :cond_8
    if-eqz p9, :cond_0

    .line 373
    :try_start_6
    invoke-static/range {p9 .. p9}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v23

    goto/16 :goto_1

    .line 384
    .end local v19    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v17

    .line 385
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "Failed to flush/close stream"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 396
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v22    # "tmpFile":Ljava/io/File;
    :catch_2
    move-exception v17

    .line 397
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception when delete oldfile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 375
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "tmpFile":Ljava/io/File;
    .restart local v19    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v17

    .line 376
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .restart local v17    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "Failed to write image"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 377
    const/4 v4, 0x0

    .line 380
    if-eqz v19, :cond_9

    .line 381
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->flush()V

    .line 382
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 388
    :cond_9
    :goto_6
    new-instance v22, Ljava/io/File;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .restart local v22    # "tmpFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 390
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 393
    if-eqz p2, :cond_a

    if-eqz p9, :cond_a

    .line 395
    :try_start_9
    new-instance v5, Ljava/io/File;

    invoke-static/range {p9 .. p9}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 401
    :cond_a
    :goto_7
    sget-boolean v5, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v5, :cond_b

    .line 402
    invoke-static {v12}, Lcom/android/camera/storage/Storage;->checkExif(Ljava/lang/String;)V

    .line 377
    :cond_b
    return v4

    .line 384
    .end local v22    # "tmpFile":Ljava/io/File;
    :catch_4
    move-exception v17

    .line 385
    const-string/jumbo v5, "CameraStorage"

    const-string/jumbo v6, "Failed to flush/close stream"

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 396
    .restart local v22    # "tmpFile":Ljava/io/File;
    :catch_5
    move-exception v17

    .line 397
    const-string/jumbo v5, "CameraStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception when delete oldfile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 378
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "tmpFile":Ljava/io/File;
    :catchall_0
    move-exception v4

    .line 380
    :goto_8
    if-eqz v19, :cond_c

    .line 381
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->flush()V

    .line 382
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 388
    :cond_c
    :goto_9
    new-instance v22, Ljava/io/File;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .restart local v22    # "tmpFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 390
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 393
    if-eqz p2, :cond_d

    if-eqz p9, :cond_d

    .line 395
    :try_start_b
    new-instance v5, Ljava/io/File;

    invoke-static/range {p9 .. p9}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 401
    :cond_d
    :goto_a
    sget-boolean v5, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v5, :cond_e

    .line 402
    invoke-static {v12}, Lcom/android/camera/storage/Storage;->checkExif(Ljava/lang/String;)V

    .line 378
    :cond_e
    throw v4

    .line 384
    .end local v22    # "tmpFile":Ljava/io/File;
    :catch_6
    move-exception v17

    .line 385
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "CameraStorage"

    const-string/jumbo v6, "Failed to flush/close stream"

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 396
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v22    # "tmpFile":Ljava/io/File;
    :catch_7
    move-exception v17

    .line 397
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "CameraStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception when delete oldfile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 412
    .end local v17    # "e":Ljava/lang/Exception;
    .local v24, "values":Landroid/content/ContentValues;
    :cond_f
    new-instance v24, Landroid/content/ContentValues;

    .end local v24    # "values":Landroid/content/ContentValues;
    const/4 v4, 0x3

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 413
    .local v24, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v4, "_display_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    if-eqz p9, :cond_4

    .line 416
    const-string/jumbo v4, "_data"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 422
    :catch_8
    move-exception v21

    .line 423
    .local v21, "th":Ljava/lang/Exception;
    const-string/jumbo v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to update image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v4, 0x0

    return v4

    .line 378
    .end local v21    # "th":Ljava/lang/Exception;
    .end local v22    # "tmpFile":Ljava/io/File;
    .end local v24    # "values":Landroid/content/ContentValues;
    .restart local v20    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/FileOutputStream;
    .local v19, "out":Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 375
    .end local v19    # "out":Ljava/io/FileOutputStream;
    .restart local v20    # "out":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/FileOutputStream;
    .restart local v19    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_5
.end method

.method public static writeFile(Ljava/lang/String;[B)J
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    const-wide/16 v6, -0x1

    .line 544
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 545
    const-string/jumbo v3, "CameraStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to create parent directory for file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-wide v6

    .line 548
    :cond_0
    const/4 v1, 0x0

    .line 550
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 552
    array-length v3, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v4, v3

    .line 557
    if-eqz v2, :cond_1

    .line 558
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 552
    :cond_1
    :goto_0
    return-wide v4

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CameraStorage"

    const-string/jumbo v6, "Failed to close file after write"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 554
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v3, "CameraStorage"

    const-string/jumbo v4, "Failed to write data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 557
    if-eqz v1, :cond_2

    .line 558
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 564
    :cond_2
    :goto_2
    return-wide v6

    .line 560
    :catch_2
    move-exception v0

    .line 561
    const-string/jumbo v3, "CameraStorage"

    const-string/jumbo v4, "Failed to close file after write"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 557
    :goto_3
    if-eqz v1, :cond_3

    .line 558
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 555
    :cond_3
    :goto_4
    throw v3

    .line 560
    :catch_3
    move-exception v0

    .line 561
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CameraStorage"

    const-string/jumbo v5, "Failed to close file after write"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v1, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 553
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
