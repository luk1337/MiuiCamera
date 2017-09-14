.class public Lcom/android/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field private static ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field private static mCountryIso:Ljava/lang/String;

.field private static mLockedOrientation:I

.field private static sClearMemoryLimit:Z

.field private static sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

.field public static sIsDumpLog:Z

.field private static sPixelDensity:F

.field private static sRangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sTypefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static sWindowHeight:I

.field public static sWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 155
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/camera/Util;->sPixelDensity:F

    .line 156
    const/16 v0, 0x2d0

    sput v0, Lcom/android/camera/Util;->sWindowWidth:I

    .line 157
    const/16 v0, 0x438

    sput v0, Lcom/android/camera/Util;->sWindowHeight:I

    .line 159
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Util;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 166
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "TW"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "KR"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 167
    const-string/jumbo v2, "SA"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "US"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "CA"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "BR"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "CO"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "MX"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "PH"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 166
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/camera/Util;->ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    .line 169
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/Util;->mLockedOrientation:I

    .line 1184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    .line 106
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 395
    if-nez p0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 394
    :cond_0
    return-void
.end method

.method private static addProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "properties"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1423
    const-string/jumbo v0, ""

    .line 1424
    .local v0, "content":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1426
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_0

    .line 1427
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 1428
    invoke-static {v1}, Lcom/android/camera/Util;->parserJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1433
    :cond_1
    return-object v0
.end method

.method private static addSpecialProperties(Ljava/lang/StringBuilder;Landroid/util/Pair;)V
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1411
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1412
    .local v2, "min":I
    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1413
    .local v1, "max":I
    if-ge v2, v1, :cond_0

    .line 1414
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "camera.debug.value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%04d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1418
    .end local v0    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "camera.debug.value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%04d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    :cond_1
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 945
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 946
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 948
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 944
    :cond_0
    return-void
.end method

.method public static final calculateDefaultPreviewEdgeSlop(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1565
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1566
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v4, v5, v6

    .line 1567
    .local v4, "width":F
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v5, v6

    .line 1568
    .local v1, "height":F
    mul-float v5, v4, v4

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 1570
    .local v3, "size":F
    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    .line 1572
    const v2, 0x7f08007b

    .line 1576
    .local v2, "resId":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    return v5

    .line 1574
    .end local v2    # "resId":I
    :cond_0
    const v2, 0x7f08007c

    .restart local v2    # "resId":I
    goto :goto_0
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1481
    const/16 v3, 0x52

    .line 1480
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    .line 1483
    .local v1, "hasMenuKey":Z
    const/4 v3, 0x4

    .line 1482
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 1485
    .local v0, "hasBackKey":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkLockedOrientation(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 481
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 482
    const-string/jumbo v3, "accelerometer_rotation"

    .line 481
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 483
    .local v1, "orientationType":I
    if-nez v1, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 485
    const-string/jumbo v3, "user_rotation"

    .line 484
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/camera/Util;->mLockedOrientation:I

    .line 478
    .end local v1    # "orientationType":I
    :goto_0
    return-void

    .line 487
    .restart local v1    # "orientationType":I
    :cond_0
    const/4 v2, -0x1

    sput v2, Lcom/android/camera/Util;->mLockedOrientation:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    .end local v1    # "orientationType":I
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 443
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 467
    if-le p0, p2, :cond_0

    return p2

    .line 468
    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    .line 469
    :cond_1
    return p0
.end method

.method public static clearMemoryLimit()V
    .locals 8

    .prologue
    .line 242
    sget-boolean v4, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    if-nez v4, :cond_0

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    .local v0, "start":J
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 245
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 247
    .local v2, "stop":J
    const-string/jumbo v4, "CameraUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clearMemoryLimit() consume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 386
    if-nez p0, :cond_0

    return-void

    .line 388
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 10
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 338
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 339
    .local v4, "w":D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .line 341
    .local v0, "h":D
    if-gez p2, :cond_0

    const/4 v2, 0x1

    .line 343
    .local v2, "lowerBound":I
    :goto_0
    if-gez p1, :cond_1

    const/16 v3, 0x80

    .line 347
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 349
    return v2

    .line 342
    .end local v2    # "lowerBound":I
    .end local v3    # "upperBound":I
    :cond_0
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .restart local v2    # "lowerBound":I
    goto :goto_0

    .line 344
    :cond_1
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 345
    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 344
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v3, v6

    goto :goto_1

    .line 352
    .restart local v3    # "upperBound":I
    :cond_2
    if-gez p2, :cond_3

    if-gez p1, :cond_3

    .line 353
    const/4 v6, 0x1

    return v6

    .line 354
    :cond_3
    if-gez p1, :cond_4

    .line 355
    return v2

    .line 357
    :cond_4
    return v3
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 320
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 324
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 325
    const/4 v1, 0x1

    .line 326
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 327
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 333
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static createFile(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, -0x1

    .line 1163
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    const/4 v2, 0x0

    return v2

    .line 1167
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, "parentDir":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1169
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1ff

    invoke-static {v2, v3, v4, v4}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 1172
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1173
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J

    .prologue
    .line 939
    sget-object v1, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    monitor-enter v1

    .line 940
    :try_start_0
    sget-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static downSample([BI)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "downSampleFactor"    # I

    .prologue
    .line 1504
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1506
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1507
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static dpToPixel(F)I
    .locals 1
    .param p0, "dp"    # F

    .prologue
    .line 252
    sget v0, Lcom/android/camera/Util;->sPixelDensity:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 447
    if-eq p0, p1, :cond_0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static expandViewTouchDelegate(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1267
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1269
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1270
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    .line 1272
    .local v1, "delegate":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1273
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1274
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1275
    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1277
    new-instance v2, Landroid/view/TouchDelegate;

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1278
    .local v2, "touchDelegate":Landroid/view/TouchDelegate;
    const-class v3, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1279
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1266
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "delegate":I
    .end local v2    # "touchDelegate":Landroid/view/TouchDelegate;
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    const-class v3, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1283
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 964
    const/16 v0, 0x190

    invoke-static {p0, v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;I)V

    .line 963
    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 953
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 955
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 956
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 957
    .local v0, "animation":Landroid/view/animation/Animation;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 958
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 959
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 952
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 978
    const/16 v0, 0x190

    invoke-static {p0, v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;I)V

    .line 977
    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I

    .prologue
    .line 968
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    .line 969
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 970
    .local v0, "animation":Landroid/view/animation/Animation;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 971
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 972
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 973
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 967
    return-void
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, -0x1

    .line 817
    const/4 v1, -0x1

    .line 820
    .local v1, "cameraId":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 821
    .local v3, "intentCameraId":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 822
    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 824
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 825
    .local v2, "frontCameraId":I
    if-eq v2, v6, :cond_0

    .line 826
    move v1, v2

    .line 836
    .end local v2    # "frontCameraId":I
    :cond_0
    :goto_0
    return v1

    .line 828
    :cond_1
    invoke-static {v3}, Lcom/android/camera/Util;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 830
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 831
    .local v0, "backCameraId":I
    if-eq v0, v6, :cond_0

    .line 832
    move v1, v0

    goto :goto_0
.end method

.method public static getCenterFocusDepthIndex([BII)I
    .locals 21
    .param p0, "depthMap"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 1210
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1212
    :cond_0
    const/16 v18, 0x1

    return v18

    .line 1217
    :cond_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v13, v18, -0x19

    .line 1219
    .local v13, "metaDataIndex":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .local v14, "metaDataIndex":I
    aget-byte v18, p0, v13

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    return v18

    .line 1220
    :cond_2
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "metaDataIndex":I
    .restart local v13    # "metaDataIndex":I
    aget-byte v18, p0, v14

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x18

    .line 1221
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .restart local v14    # "metaDataIndex":I
    aget-byte v19, p0, v13

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    .line 1220
    or-int v18, v18, v19

    .line 1222
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "metaDataIndex":I
    .restart local v13    # "metaDataIndex":I
    aget-byte v19, p0, v14

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    .line 1220
    or-int v18, v18, v19

    .line 1223
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .restart local v14    # "metaDataIndex":I
    aget-byte v19, p0, v13

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 1220
    or-int v11, v18, v19

    .line 1224
    .local v11, "mapwidth":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "metaDataIndex":I
    .restart local v13    # "metaDataIndex":I
    aget-byte v18, p0, v14

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x18

    .line 1225
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .restart local v14    # "metaDataIndex":I
    aget-byte v19, p0, v13

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    .line 1224
    or-int v18, v18, v19

    .line 1226
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "metaDataIndex":I
    .restart local v13    # "metaDataIndex":I
    aget-byte v19, p0, v14

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    .line 1224
    or-int v18, v18, v19

    .line 1227
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .restart local v14    # "metaDataIndex":I
    aget-byte v19, p0, v13

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 1224
    or-int v10, v18, v19

    .line 1228
    .local v10, "mapheight":I
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08000f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1229
    .local v3, "centerWidth":I
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080010

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1230
    .local v2, "centerHeight":I
    mul-int v18, v11, v3

    sget v19, Lcom/android/camera/Util;->sWindowWidth:I

    div-int v17, v18, v19

    .line 1231
    .local v17, "width":I
    mul-int v18, v10, v2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sget v19, Lcom/android/camera/Util;->sWindowWidth:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 1232
    .local v7, "height":I
    sub-int v18, v10, v7

    div-int/lit8 v15, v18, 0x2

    .line 1233
    .local v15, "row":I
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v6, v0, [I

    .line 1234
    .local v6, "countArray":[I
    const/4 v8, 0x0

    .local v8, "i":I
    move/from16 v16, v15

    .end local v15    # "row":I
    .local v16, "row":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 1235
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "row":I
    .restart local v15    # "row":I
    mul-int v18, v16, v11

    sub-int v19, v11, v17

    div-int/lit8 v19, v19, 0x2

    add-int v4, v18, v19

    .line 1236
    .local v4, "colindex":I
    const/4 v9, 0x0

    .local v9, "j":I
    move v5, v4

    .end local v4    # "colindex":I
    .local v5, "colindex":I
    :goto_1
    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 1237
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "colindex":I
    .restart local v4    # "colindex":I
    aget-byte v18, p0, v5

    aget v19, v6, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v6, v18

    .line 1236
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4    # "colindex":I
    .restart local v5    # "colindex":I
    goto :goto_1

    .line 1234
    :cond_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v16, v15

    .end local v15    # "row":I
    .restart local v16    # "row":I
    goto :goto_0

    .line 1241
    .end local v5    # "colindex":I
    .end local v9    # "j":I
    :cond_4
    const/4 v12, 0x0

    .line 1242
    .local v12, "maxIndex":I
    const/4 v8, 0x1

    :goto_2
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 1243
    aget v18, v6, v12

    aget v19, v6, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 1244
    move v12, v8

    .line 1242
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1247
    :cond_6
    return v12
.end method

.method public static getDebugInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1356
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/android/camera/Util;->sRangeList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1357
    sget-object v3, Lcom/android/camera/Util;->sRangeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "range$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1358
    .local v0, "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v2, v0}, Lcom/android/camera/Util;->addSpecialProperties(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    goto :goto_0

    .line 1361
    .end local v0    # "range":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "range$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .param p0, "degrees"    # I
    .param p1, "cameraId"    # I

    .prologue
    .line 535
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 536
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 538
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 539
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 540
    .local v1, "result":I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 544
    :goto_0
    return v1

    .line 542
    .end local v1    # "result":I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "rotation":I
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 513
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 519
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 525
    return v3

    .line 515
    :cond_1
    sget v1, Lcom/android/camera/Util;->mLockedOrientation:I

    if-eqz v1, :cond_2

    sget v1, Lcom/android/camera/Util;->mLockedOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 516
    :cond_2
    sget v0, Lcom/android/camera/Util;->mLockedOrientation:I

    goto :goto_0

    .line 520
    :pswitch_0
    return v3

    .line 521
    :pswitch_1
    const/16 v1, 0x5a

    return v1

    .line 522
    :pswitch_2
    const/16 v1, 0xb4

    return v1

    .line 523
    :pswitch_3
    const/16 v1, 0x10e

    return v1

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageRotation(IIZ)I
    .locals 1
    .param p0, "sensorOrientation"    # I
    .param p1, "deviceOrientation"    # I
    .param p2, "isFrontCamera"    # Z

    .prologue
    .line 1037
    if-eqz p2, :cond_0

    .line 1038
    rsub-int v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 1040
    :cond_0
    add-int v0, p0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 1438
    :try_start_0
    invoke-static {p0, p2, p3}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    .line 1439
    .local v2, "field":Lmiui/reflect/Field;
    invoke-virtual {v2, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Lmiui/reflect/NoSuchClassException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1442
    .end local v2    # "field":Lmiui/reflect/Field;
    :catch_0
    move-exception v1

    .line 1443
    .local v1, "e":Lmiui/reflect/NoSuchFieldException;
    const-string/jumbo v3, "CameraUtil"

    const-string/jumbo v4, "no field "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1445
    .end local v1    # "e":Lmiui/reflect/NoSuchFieldException;
    :goto_0
    const/high16 v3, -0x80000000

    return v3

    .line 1440
    :catch_1
    move-exception v0

    .line 1441
    .local v0, "e":Lmiui/reflect/NoSuchClassException;
    const-string/jumbo v3, "CameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getJpegRotation(II)I
    .locals 4
    .param p0, "cameraId"    # I
    .param p1, "orientation"    # I

    .prologue
    .line 984
    const/4 v1, 0x0

    .line 985
    .local v1, "rotation":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p0

    .line 986
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 987
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 988
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 995
    :goto_0
    return v1

    .line 990
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0

    .line 993
    :cond_1
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_0
.end method

.method public static getJpegRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I
    .locals 4
    .param p0, "deviceOrientationDegrees"    # I
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 1008
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    .line 1009
    const-string/jumbo v2, "CameraUtil"

    const-string/jumbo v3, "unknown device orientation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 p0, 0x0

    .line 1012
    :cond_0
    if-nez p1, :cond_1

    .line 1013
    const-string/jumbo v2, "CameraUtil"

    const-string/jumbo v3, "null getCharacteristics"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return p0

    .line 1016
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 1018
    .local v0, "isFrontCamera":Z
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1019
    .local v1, "sensorOrientation":I
    invoke-static {v1, p0, v0}, Lcom/android/camera/Util;->getImageRotation(IIZ)I

    move-result v2

    return v2

    .line 1016
    .end local v0    # "isFrontCamera":Z
    .end local v1    # "sensorOrientation":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isFrontCamera":Z
    goto :goto_0
.end method

.method public static getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1314
    const/4 v1, 0x0

    .line 1316
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz p0, :cond_0

    :try_start_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1317
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2, p1, p2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1326
    .end local v1    # "method":Lmiui/reflect/Method;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1327
    const-string/jumbo v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMethod fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_1
    return-object v1

    .line 1319
    .restart local v1    # "method":Lmiui/reflect/Method;
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Lmiui/reflect/NoSuchMethodException;
    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1321
    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p0, v4

    .line 1322
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .local v1, "method":Lmiui/reflect/Method;
    goto :goto_0
.end method

.method public static getMiuiTimeTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1195
    const-string/jumbo v0, "fonts/MIUI_Time.ttf"

    invoke-static {p0, v0}, Lcom/android/camera/Util;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1187
    const-string/jumbo v0, "fonts/MIUI_Normal.ttf"

    invoke-static {p0, v0}, Lcom/android/camera/Util;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1472
    .local v2, "resources":Landroid/content/res/Resources;
    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1473
    .local v1, "resourceId":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1474
    .local v0, "height":I
    const-string/jumbo v3, "CameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Navi height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    return v0
.end method

.method public static getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 17
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 684
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_0

    const/4 v11, 0x0

    return-object v11

    .line 686
    :cond_0
    const/4 v6, 0x0

    .line 688
    .local v6, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide/16 v4, 0x0

    .line 690
    .local v4, "approachingRatio":D
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v6    # "optimalSize":Landroid/hardware/Camera$Size;
    .local v10, "size$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 691
    .local v7, "size":Landroid/hardware/Camera$Size;
    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    if-eqz v11, :cond_1

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    if-eqz v11, :cond_1

    .line 694
    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v11

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v11

    div-double v8, v12, v14

    .line 695
    .local v8, "ratio":D
    sub-double v12, v8, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 696
    .local v2, "absRatio":D
    sub-double v12, v4, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v11, v2, v12

    if-lez v11, :cond_2

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v11, v2, v12

    if-gtz v11, :cond_1

    .line 697
    :cond_2
    if-eqz v6, :cond_3

    sub-double v12, v4, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v11, v2, v12

    if-gez v11, :cond_4

    .line 699
    :cond_3
    :goto_1
    move-object v6, v7

    .line 700
    .local v6, "optimalSize":Landroid/hardware/Camera$Size;
    move-wide v4, v8

    goto :goto_0

    .line 698
    .end local v6    # "optimalSize":Landroid/hardware/Camera$Size;
    :cond_4
    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    if-le v11, v12, :cond_1

    goto :goto_1

    .line 706
    .end local v2    # "absRatio":D
    .end local v7    # "size":Landroid/hardware/Camera$Size;
    .end local v8    # "ratio":D
    :cond_5
    if-nez v6, :cond_8

    .line 707
    const-string/jumbo v11, "CameraUtil"

    const-string/jumbo v12, "No thumbnail size match the aspect ratio"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 709
    .restart local v7    # "size":Landroid/hardware/Camera$Size;
    if-eqz v6, :cond_7

    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    if-le v11, v12, :cond_6

    .line 710
    :cond_7
    move-object v6, v7

    .restart local v6    # "optimalSize":Landroid/hardware/Camera$Size;
    goto :goto_2

    .line 714
    .end local v6    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v7    # "size":Landroid/hardware/Camera$Size;
    :cond_8
    return-object v6
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 24
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p2, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p1, :cond_0

    const/16 v19, 0x0

    return-object v19

    .line 584
    :cond_0
    const/4 v10, 0x0

    .line 585
    .local v10, "optimalSize":Landroid/hardware/Camera$Size;
    const/4 v11, 0x0

    .line 586
    .local v11, "optimalSizeSmaller":Landroid/hardware/Camera$Size;
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 587
    .local v6, "minDiff":D
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 588
    .local v8, "minDiffSmaller":D
    const/16 v18, 0x0

    .line 595
    .local v18, "small":Z
    const-string/jumbo v19, "camera_reduce_preview_flag"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v13

    .line 601
    .local v13, "reduceFlag":I
    if-eqz v13, :cond_2

    .line 603
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v4

    .line 606
    .local v4, "frontCamera":Z
    sget v19, Lcom/android/camera/Util;->sWindowWidth:I

    const/16 v20, 0x438

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 607
    and-int/lit8 v13, v13, -0xf

    .line 609
    :cond_1
    if-eqz v4, :cond_9

    const/16 v19, 0x2

    :goto_0
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v20

    if-nez v20, :cond_a

    const/16 v20, 0x0

    :goto_1
    shl-int v19, v19, v20

    or-int/lit8 v2, v19, 0x0

    .line 610
    .local v2, "currentState":I
    and-int v19, v13, v2

    if-eqz v19, :cond_b

    const/16 v18, 0x1

    .line 618
    .end local v2    # "currentState":I
    .end local v4    # "frontCamera":Z
    :cond_2
    :goto_2
    new-instance v12, Landroid/graphics/Point;

    sget v19, Lcom/android/camera/Util;->sWindowWidth:I

    sget v20, Lcom/android/camera/Util;->sWindowHeight:I

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 621
    .local v12, "point":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v19

    if-nez v19, :cond_c

    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 622
    const/16 v5, 0x2d0

    .line 623
    .local v5, "limitWidth":I
    :goto_3
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v5, :cond_3

    .line 624
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    mul-int v19, v19, v5

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    div-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v12, Landroid/graphics/Point;->y:I

    .line 625
    iput v5, v12, Landroid/graphics/Point;->x:I

    .line 629
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v10    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v11    # "optimalSizeSmaller":Landroid/hardware/Camera$Size;
    .local v17, "size$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    .line 630
    .local v16, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v14, v20, v22

    .line 631
    .local v14, "ratio":D
    sub-double v20, v14, p2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v19, v20, v22

    if-gtz v19, :cond_4

    .line 632
    if-eqz v18, :cond_5

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 635
    :cond_5
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int v3, v19, v20

    .line 636
    .local v3, "diff":I
    if-nez v3, :cond_d

    .line 637
    move-object/from16 v10, v16

    .line 638
    .local v10, "optimalSize":Landroid/hardware/Camera$Size;
    move-object/from16 v11, v16

    .line 655
    .end local v3    # "diff":I
    .end local v10    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v14    # "ratio":D
    .end local v16    # "size":Landroid/hardware/Camera$Size;
    :cond_6
    if-eqz v11, :cond_7

    .line 656
    move-object v10, v11

    .line 661
    :cond_7
    if-nez v10, :cond_f

    .line 662
    const-string/jumbo v19, "CameraUtil"

    const-string/jumbo v20, "No preview size match the aspect ratio"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 664
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_8
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    .line 665
    .restart local v16    # "size":Landroid/hardware/Camera$Size;
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int v3, v19, v20

    .line 666
    .restart local v3    # "diff":I
    int-to-double v0, v3

    move-wide/from16 v20, v0

    cmpg-double v19, v20, v6

    if-gez v19, :cond_8

    .line 667
    move-object/from16 v10, v16

    .line 668
    .restart local v10    # "optimalSize":Landroid/hardware/Camera$Size;
    int-to-double v6, v3

    goto :goto_5

    .line 609
    .end local v3    # "diff":I
    .end local v5    # "limitWidth":I
    .end local v12    # "point":Landroid/graphics/Point;
    .end local v16    # "size":Landroid/hardware/Camera$Size;
    .end local v17    # "size$iterator":Ljava/util/Iterator;
    .restart local v4    # "frontCamera":Z
    .local v10, "optimalSize":Landroid/hardware/Camera$Size;
    .restart local v11    # "optimalSizeSmaller":Landroid/hardware/Camera$Size;
    :cond_9
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v20, 0x2

    goto/16 :goto_1

    .line 610
    .restart local v2    # "currentState":I
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 622
    .end local v2    # "currentState":I
    .end local v4    # "frontCamera":Z
    .restart local v12    # "point":Landroid/graphics/Point;
    :cond_c
    const/16 v5, 0x438

    .restart local v5    # "limitWidth":I
    goto/16 :goto_3

    .line 641
    .end local v10    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v11    # "optimalSizeSmaller":Landroid/hardware/Camera$Size;
    .restart local v3    # "diff":I
    .restart local v14    # "ratio":D
    .restart local v16    # "size":Landroid/hardware/Camera$Size;
    .restart local v17    # "size$iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_e

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_e

    .line 642
    int-to-double v0, v3

    move-wide/from16 v20, v0

    cmpg-double v19, v20, v8

    if-gez v19, :cond_e

    .line 643
    move-object/from16 v11, v16

    .line 644
    .local v11, "optimalSizeSmaller":Landroid/hardware/Camera$Size;
    int-to-double v8, v3

    .line 647
    .end local v11    # "optimalSizeSmaller":Landroid/hardware/Camera$Size;
    :cond_e
    int-to-double v0, v3

    move-wide/from16 v20, v0

    cmpg-double v19, v20, v6

    if-gez v19, :cond_4

    .line 648
    move-object/from16 v10, v16

    .line 649
    .local v10, "optimalSize":Landroid/hardware/Camera$Size;
    int-to-double v6, v3

    goto/16 :goto_4

    .line 673
    .end local v3    # "diff":I
    .end local v10    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v14    # "ratio":D
    .end local v16    # "size":Landroid/hardware/Camera$Size;
    :cond_f
    if-eqz v10, :cond_10

    .line 674
    const-string/jumbo v19, "CameraUtil"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "The best preview size is :("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " , "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v10, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_10
    return-object v10
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;
    .locals 11
    .param p1, "targetRatio"    # D
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DII)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 721
    if-nez p0, :cond_0

    return-object v5

    .line 723
    :cond_0
    const/4 v0, 0x0

    .line 726
    .local v0, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "optimalSize":Landroid/hardware/Camera$Size;
    .local v4, "size$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 727
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v5

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v5

    div-double v2, v6, v8

    .line 728
    .local v2, "ratio":D
    sub-double v6, v2, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_1

    .line 729
    if-eqz v0, :cond_2

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_1

    .line 730
    :cond_2
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v5, p3, :cond_1

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    if-gt v5, p4, :cond_1

    .line 731
    move-object v0, v1

    .local v0, "optimalSize":Landroid/hardware/Camera$Size;
    goto :goto_0

    .line 737
    .end local v0    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    .end local v2    # "ratio":D
    :cond_3
    if-nez v0, :cond_6

    .line 738
    const-string/jumbo v5, "CameraUtil"

    const-string/jumbo v6, "No picture size match the aspect ratio"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 740
    .restart local v1    # "size":Landroid/hardware/Camera$Size;
    if-eqz v0, :cond_5

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_4

    .line 741
    :cond_5
    move-object v0, v1

    .restart local v0    # "optimalSize":Landroid/hardware/Camera$Size;
    goto :goto_1

    .line 745
    .end local v0    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_6
    return-object v0
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 865
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 866
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 867
    aget v1, v0, v4

    .line 868
    .local v1, "referenceX":I
    aget v2, v0, v5

    .line 869
    .local v2, "referenceY":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 870
    aget v3, v0, v4

    sub-int/2addr v3, v1

    aput v3, v0, v4

    .line 871
    aget v3, v0, v5

    sub-int/2addr v3, v2

    aput v3, v0, v5

    .line 872
    return-object v0
.end method

.method public static getScreenInches(Landroid/content/Context;)D
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1449
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1451
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1450
    check-cast v3, Landroid/view/WindowManager;

    .line 1452
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1454
    sget v8, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v8, v8

    iget v9, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 1455
    .local v4, "x":D
    sget v8, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v8, v8

    iget v9, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 1456
    .local v6, "y":D
    add-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1457
    .local v0, "inches":D
    const-string/jumbo v8, "CameraUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getScreenInches = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-wide v0
.end method

.method public static getShootOrientation(Landroid/app/Activity;I)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orientation"    # I

    .prologue
    .line 495
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static getShootRotation(Landroid/app/Activity;F)F
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rotation"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 499
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 500
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 501
    add-float/2addr p1, v1

    goto :goto_0

    .line 503
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 504
    sub-float/2addr p1, v1

    goto :goto_1

    .line 506
    :cond_1
    return p1
.end method

.method public static getStartCameraId(Landroid/app/Activity;)I
    .locals 4
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 758
    const/4 v0, -0x1

    .line 759
    .local v0, "id":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extras.START_WITH_FRONT_CAMERA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    .line 766
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extras.START_WITH_FRONT_CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extras.START_WITH_BACK_CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 768
    return v0

    .line 761
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extras.START_WITH_BACK_CAMERA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public static getStartModuleIndex(Landroid/app/Activity;)I
    .locals 5
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 772
    const/4 v1, -0x1

    .line 773
    .local v1, "index":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 775
    const-string/jumbo v3, "pref_camera_stereo_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 776
    const-string/jumbo v3, "pref_camera_mono_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    .line 775
    if-nez v3, :cond_0

    .line 777
    const-string/jumbo v3, "pref_camera_raw_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    .line 775
    if-eqz v3, :cond_2

    .line 778
    :cond_0
    const/4 v1, 0x3

    .line 796
    :cond_1
    :goto_0
    return v1

    .line 780
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 782
    :cond_3
    const-string/jumbo v3, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 783
    const-string/jumbo v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 782
    if-eqz v3, :cond_5

    .line 784
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 785
    :cond_5
    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 786
    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 785
    if-eqz v3, :cond_1

    .line 787
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.intent.extras.CAMERA_TYPE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "camera_rear_sub"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 789
    const-string/jumbo v3, "camera_rear_dual"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 788
    if-eqz v3, :cond_8

    .line 790
    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    .line 792
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTimeWatermark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1289
    invoke-static {}, Lcom/android/camera/Device;->isSupportedNewStyleTimeWaterMark()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->getTimeWatermark(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeWatermark(Z)Ljava/lang/String;
    .locals 9
    .param p0, "isNewStyle"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 1295
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy/M/d"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1296
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1295
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1297
    .local v0, "dateStr":[C
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1303
    :goto_0
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1305
    .local v2, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1306
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v2, Landroid/text/format/Time;->hour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v2, Landroid/text/format/Time;->minute:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1299
    .end local v0    # "dateStr":[C
    .end local v2    # "time":Landroid/text/format/Time;
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-M-d"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1300
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1299
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1301
    .restart local v0    # "dateStr":[C
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static declared-synchronized getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/android/camera/Util;

    monitor-enter v1

    .line 1199
    :try_start_0
    sget-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    sget-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWindowAttribute(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 212
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 211
    check-cast v5, Landroid/view/WindowManager;

    .line 213
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 214
    iget v6, v3, Landroid/util/DisplayMetrics;->noncompatDensity:F

    sput v6, Lcom/android/camera/Util;->sPixelDensity:F

    .line 216
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 217
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 218
    .local v4, "p":Landroid/graphics/Point;
    sget-boolean v6, Lcom/android/camera/Device;->IS_A8:Z

    if-eqz v6, :cond_0

    .line 220
    :try_start_0
    const-class v6, Landroid/view/Display;

    const-string/jumbo v7, "getRealSize"

    const-string/jumbo v8, "(Landroid/graphics/Point;Z)V"

    invoke-static {v6, v7, v8}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 221
    .local v2, "method":Lmiui/reflect/Method;
    const-class v6, Landroid/view/Display;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v2, v6, v0, v7}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v2    # "method":Lmiui/reflect/Method;
    :goto_0
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-ge v6, v7, :cond_1

    .line 232
    iget v6, v4, Landroid/graphics/Point;->x:I

    sput v6, Lcom/android/camera/Util;->sWindowWidth:I

    .line 233
    iget v6, v4, Landroid/graphics/Point;->y:I

    sput v6, Lcom/android/camera/Util;->sWindowHeight:I

    .line 238
    :goto_1
    const-string/jumbo v6, "CameraUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/camera/Util;->sWindowWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " sPixelDensity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/camera/Util;->sPixelDensity:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 226
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 235
    :cond_1
    iget v6, v4, Landroid/graphics/Point;->y:I

    sput v6, Lcom/android/camera/Util;->sWindowWidth:I

    .line 236
    iget v6, v4, Landroid/graphics/Point;->x:I

    sput v6, Lcom/android/camera/Util;->sWindowHeight:I

    goto :goto_1
.end method

.method public static initRangeList()V
    .locals 12

    .prologue
    .line 1365
    sget-object v8, Lcom/android/camera/Util;->sRangeList:Ljava/util/List;

    if-nez v8, :cond_2

    .line 1366
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v8, Lcom/android/camera/Util;->sRangeList:Ljava/util/List;

    .line 1370
    :goto_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, "camera_debug_show.txt"

    invoke-static {v8}, Lcom/android/camera/storage/Storage;->generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v6, "showFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1372
    const/4 v0, 0x0

    .line 1374
    .local v0, "dr":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1375
    .end local v0    # "dr":Ljava/io/BufferedReader;
    .local v1, "dr":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1376
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "range":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1377
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1378
    const-string/jumbo v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1380
    .local v5, "ranges":[Ljava/lang/String;
    :try_start_2
    array-length v8, v5

    packed-switch v8, :pswitch_data_0

    .line 1386
    sget-object v8, Lcom/android/camera/Util;->sRangeList:Ljava/util/List;

    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1387
    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1386
    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1390
    :catch_0
    move-exception v3

    .line 1391
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string/jumbo v8, "CameraUtil"

    const-string/jumbo v9, "NumberFormatException in addSpecialProperties "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1395
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "range":Ljava/lang/String;
    .end local v5    # "ranges":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 1396
    .end local v1    # "dr":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1398
    if-eqz v0, :cond_1

    .line 1400
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1404
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v0, 0x0

    .line 1364
    :cond_1
    :goto_4
    return-void

    .line 1368
    .end local v6    # "showFile":Ljava/io/File;
    :cond_2
    sget-object v8, Lcom/android/camera/Util;->sRangeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1382
    .restart local v1    # "dr":Ljava/io/BufferedReader;
    .restart local v4    # "range":Ljava/lang/String;
    .restart local v5    # "ranges":[Ljava/lang/String;
    .restart local v6    # "showFile":Ljava/io/File;
    :pswitch_0
    const/4 v8, 0x0

    :try_start_6
    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1383
    .local v7, "value":I
    sget-object v8, Lcom/android/camera/Util;->sRangeList:Ljava/util/List;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1397
    .end local v4    # "range":Ljava/lang/String;
    .end local v5    # "ranges":[Ljava/lang/String;
    .end local v7    # "value":I
    :catchall_0
    move-exception v8

    move-object v0, v1

    .line 1398
    .end local v1    # "dr":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v0, :cond_3

    .line 1400
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1404
    :goto_6
    const/4 v0, 0x0

    .line 1397
    :cond_3
    throw v8

    .line 1398
    .restart local v1    # "dr":Ljava/io/BufferedReader;
    .restart local v4    # "range":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 1400
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 1401
    :catch_2
    move-exception v2

    .line 1402
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1401
    .end local v1    # "dr":Ljava/io/BufferedReader;
    .end local v4    # "range":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 1402
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1401
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 1402
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1397
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto :goto_5

    .line 1395
    .restart local v0    # "dr":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .end local v0    # "dr":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dr":Ljava/io/BufferedReader;
    .restart local v4    # "range":Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1    # "dr":Ljava/io/BufferedReader;
    .local v0, "dr":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    new-instance v0, Lcom/android/camera/Util$ImageFileNamer;

    .line 205
    const v1, 0x7f0e00dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-direct {v0, v1}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    .line 206
    invoke-static {p0}, Lcom/android/camera/Util;->getWindowAttribute(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method public static isActivityInvert(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 529
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAntibanding60()Z
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/android/camera/Util;->ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;

    sget-object v1, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1554
    const-string/jumbo v7, "access_control_lock_enabled"

    const/4 v8, -0x1

    .line 1553
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    move v0, v5

    .line 1555
    .local v0, "controlLock":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1556
    const-string/jumbo v6, "security"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManager;

    .line 1557
    .local v2, "sm":Lmiui/security/SecurityManager;
    invoke-virtual {v2, p1}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1558
    .local v1, "lockOn":Z
    invoke-virtual {v2, p1}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v3

    .line 1559
    .local v3, "unlocked":Z
    if-eqz v1, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return v4

    .end local v0    # "controlLock":Z
    .end local v1    # "lockOn":Z
    .end local v2    # "sm":Lmiui/security/SecurityManager;
    .end local v3    # "unlocked":Z
    :cond_1
    move v0, v4

    .line 1553
    goto :goto_0

    .restart local v0    # "controlLock":Z
    .restart local v1    # "lockOn":Z
    .restart local v2    # "sm":Lmiui/security/SecurityManager;
    .restart local v3    # "unlocked":Z
    :cond_2
    move v4, v5

    .line 1559
    goto :goto_1

    .line 1561
    .end local v1    # "lockOn":Z
    .end local v2    # "sm":Lmiui/security/SecurityManager;
    .end local v3    # "unlocked":Z
    :cond_3
    return v4
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    const/4 v0, 0x0

    .line 844
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isContaints(Landroid/graphics/Rect;Landroid/graphics/RectF;)Z
    .locals 3
    .param p0, "parent"    # Landroid/graphics/Rect;
    .param p1, "child"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x0

    .line 1463
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v0

    .line 1464
    :cond_1
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_2

    .line 1466
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 1467
    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    .line 1464
    :cond_2
    return v0
.end method

.method public static isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1525
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v1, v0, :cond_0

    .line 1526
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1527
    invoke-static {}, Lcom/android/camera/Device;->getFpNavEventNameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1525
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    const/4 v0, 0x1

    .line 840
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInVideoCall(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1511
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-gt v5, v4, :cond_0

    .line 1512
    const-string/jumbo v4, "telecom"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1514
    .local v3, "telecomManager":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v4, "android.telecom.TelecomManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1515
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "isInVideoCall"

    const-string/jumbo v5, "()Z"

    invoke-static {v0, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 1516
    .local v2, "method":Lmiui/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 1517
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Lmiui/reflect/Method;
    :catch_0
    move-exception v1

    .line 1518
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CameraUtil"

    const-string/jumbo v5, "check isInVideoCall Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1521
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "telecomManager":Ljava/lang/Object;
    :cond_0
    return v6
.end method

.method public static isMemoryRich(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1490
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1491
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1492
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1494
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x19000000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isProduceFocusInfoSuccess([B)Z
    .locals 3
    .param p0, "depthMap"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1206
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x19

    if-ge v2, v1, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x19

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSaveDebugInfo()Z
    .locals 2

    .prologue
    .line 1351
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "camera_debug_save"

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isShowDebugInfo()Z
    .locals 2

    .prologue
    .line 1347
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "camera_debug_show.txt"

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1103
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTimeout(JJJ)Z
    .locals 4
    .param p0, "now"    # J
    .param p2, "last"    # J
    .param p4, "gap"    # J

    .prologue
    const/4 v0, 0x1

    .line 1181
    cmp-long v1, p0, p2

    if-ltz v1, :cond_0

    sub-long v2, p0, p2

    cmp-long v1, v2, p4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v5, 0x0

    .line 876
    if-nez p0, :cond_0

    return v5

    .line 879
    :cond_0
    :try_start_0
    const-string/jumbo v2, "r"

    invoke-virtual {p1, p0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 880
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 881
    const-string/jumbo v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fail to open URI. URI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return v5

    .line 884
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    const/4 v2, 0x1

    return v2

    .line 885
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 886
    .local v0, "ex":Ljava/io/IOException;
    return v5
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "jpegData"    # [B
    .param p1, "maxNumOfPixels"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 363
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 364
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 365
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 367
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v2, v4, :cond_1

    .line 369
    :cond_0
    return-object v5

    .line 368
    :cond_1
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v2, v4, :cond_0

    .line 372
    const/4 v2, -0x1

    .line 371
    invoke-static {v1, v2, p1}, Lcom/android/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 373
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 375
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 376
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 377
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 379
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 380
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "CameraUtil"

    const-string/jumbo v3, "Got oom exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    return-object v5
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 1149
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1150
    const/4 v1, 0x0

    return v1

    .line 1154
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "parentDir":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1156
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 1159
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    return v1
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 404
    const-string/jumbo v2, "device_policy"

    .line 403
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 405
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    new-instance v2, Lcom/android/camera/CameraDisabledException;

    invoke-direct {v2}, Lcom/android/camera/CameraDisabledException;-><init>()V

    throw v2

    .line 409
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraDataAnalytics;->openPreference(I)V

    .line 412
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 413
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Lcom/android/camera/CameraHardwareException;
    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "openCamera failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 419
    :cond_1
    throw v1
.end method

.method public static parserJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "jstring"    # Ljava/lang/String;

    .prologue
    .line 1531
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1532
    const-string/jumbo v4, ""

    .line 1534
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v2, "json":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 1536
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "key":Ljava/lang/String;
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1537
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1540
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1541
    .local v3, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1543
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "CameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parser property fail, content="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1546
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v4

    .line 1548
    .end local v4    # "result":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 5
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 848
    if-nez p2, :cond_0

    return v2

    .line 849
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 850
    .local v0, "location":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 851
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_2

    aget v3, v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_2

    .line 852
    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    aget v3, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 851
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 852
    goto :goto_0

    :cond_2
    move v1, v2

    .line 851
    goto :goto_0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V
    .locals 3
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "mirror"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .param p5, "centerX"    # I
    .param p6, "centerY"    # I

    .prologue
    const/high16 v2, 0x44fa0000    # 2000.0f

    .line 929
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 931
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 933
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 935
    int-to-float v0, p5

    int-to-float v1, p6

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 927
    return-void

    .line 929
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 914
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 915
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 916
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 917
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 913
    return-void
.end method

.method public static replaceStartEffectRender(Landroid/app/Activity;)I
    .locals 8
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 800
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 801
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extras.START_WITH_EFFECT_RENDER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 802
    .local v3, "resName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 803
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 804
    .local v2, "resId":I
    if-eqz v2, :cond_0

    .line 805
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/effect/EffectController;->getEffectIndexByEntryName(Ljava/lang/String;)I

    move-result v0

    .line 807
    .local v0, "effect":I
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    .line 808
    return v0

    .line 812
    .end local v0    # "effect":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "resId":I
    .end local v3    # "resName":Ljava/lang/String;
    :cond_0
    return v7
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 264
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 265
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 268
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 269
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 270
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 271
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 272
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 279
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 281
    int-to-float v0, p1

    .line 282
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 281
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 287
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 286
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 288
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 289
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    move-object p0, v7

    .line 296
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 273
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 274
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 276
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    goto :goto_1
.end method

.method public static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 567
    const/4 v0, 0x1

    .line 573
    :goto_0
    if-eqz v0, :cond_2

    .line 574
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    return v2

    .line 569
    :cond_0
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 570
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 571
    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 576
    .end local v1    # "dist":I
    :cond_2
    return p1
.end method

.method public static safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p0, "url"    # Landroid/net/Uri;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1333
    const/4 v0, -0x1

    .line 1335
    .local v0, "deleteResult":I
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1337
    const-string/jumbo v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "safeDelete url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " where="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1338
    const-string/jumbo v4, " selectionArgs="

    .line 1337
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1339
    const-string/jumbo v4, " result="

    .line 1337
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    :goto_0
    return v0

    .line 1340
    :catch_0
    move-exception v1

    .line 1341
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 14
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v0, 0x1

    const-wide/16 v10, 0x0

    .line 1051
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v12

    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1057
    if-eqz p1, :cond_1

    .line 1058
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1059
    .local v2, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1060
    .local v4, "lon":D
    cmpl-double v1, v2, v10

    if-nez v1, :cond_0

    cmpl-double v1, v4, v10

    if-eqz v1, :cond_2

    .line 1062
    .local v0, "hasLatLon":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1063
    const-string/jumbo v1, "CameraUtil"

    const-string/jumbo v8, "Set gps location"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {p0, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1065
    invoke-virtual {p0, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1066
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1068
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1075
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_1

    .line 1078
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    div-long v6, v8, v12

    .line 1079
    .local v6, "utcTimeSeconds":J
    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1049
    .end local v0    # "hasLatLon":Z
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    .end local v6    # "utcTimeSeconds":J
    .end local p1    # "loc":Landroid/location/Location;
    :cond_1
    :goto_2
    return-void

    .line 1060
    .restart local v2    # "lat":D
    .restart local v4    # "lon":D
    .restart local p1    # "loc":Landroid/location/Location;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1073
    .restart local v0    # "hasLatLon":Z
    :cond_3
    invoke-virtual {p0, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 1082
    :cond_4
    const/4 p1, 0x0

    .local p1, "loc":Landroid/location/Location;
    goto :goto_2
.end method

.method public static setRotationParameter(Landroid/hardware/Camera$Parameters;II)V
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "cameraId"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 1090
    const/4 v1, 0x0

    .line 1091
    .local v1, "rotation":I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 1092
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 1093
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1094
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 1099
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1087
    return-void

    .line 1096
    .restart local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msgId"    # I

    .prologue
    .line 426
    new-instance v0, Lcom/android/camera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 432
    .local v0, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    const/4 v2, 0x0

    .line 432
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 434
    const v2, 0x1010355

    .line 432
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 435
    const v2, 0x7f0e0003

    .line 432
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 437
    const v2, 0x7f0e00d9

    .line 432
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 424
    return-void
.end method

.method public static updateCountryIso(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const-string/jumbo v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 183
    .local v0, "detectedCountry":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    .line 186
    :cond_0
    const-string/jumbo v1, "CameraUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "antiBanding mCountryIso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string/jumbo v1, "camera_dump_parameters"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    .line 180
    return-void
.end method
