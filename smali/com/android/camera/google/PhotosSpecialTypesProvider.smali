.class public Lcom/android/camera/google/PhotosSpecialTypesProvider;
.super Landroid/content/ContentProvider;
.source "PhotosSpecialTypesProvider.java"


# static fields
.field private static final TYPE_URI_PROJECTION:[Ljava/lang/String;


# instance fields
.field private authority:Ljava/lang/String;

.field private trustedPartners:Lcom/google/android/apps/photos/api/signature/TrustedPartners;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "special_type_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 89
    sput-object v0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private deleteSpecialType(Landroid/net/Uri;)Z
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "PhotoTypes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete uri->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", media id -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/google/ProviderDbHelper;->get(Landroid/content/Context;)Lcom/android/camera/google/ProviderDbHelper;

    move-result-object v1

    .line 172
    .local v1, "helper":Lcom/android/camera/google/ProviderDbHelper;
    invoke-virtual {v1}, Lcom/android/camera/google/ProviderDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v3, "type_uri"

    const-string/jumbo v4, "media_store_id=?"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    return v7
.end method

.method private loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/google/android/apps/photos/api/IconQuery$Type;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 404
    const-string/jumbo v9, "PhotoTypes"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "load Icon uri->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 406
    .local v3, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 407
    .local v8, "typeIdString":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/camera/google/SpecialType;->fromTypeId(I)Lcom/android/camera/google/SpecialType;

    move-result-object v7

    .line 409
    .local v7, "specialType":Lcom/android/camera/google/SpecialType;
    sget-object v9, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    if-ne p2, v9, :cond_0

    iget v5, v7, Lcom/android/camera/google/SpecialType;->iconBadgeResourceId:I

    .line 415
    .local v5, "resourceId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 416
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 417
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 418
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p2}, Lcom/google/android/apps/photos/api/IconQuery$Type;->getDimensionResourceId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 420
    .local v4, "pixels":I
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v4, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 425
    .local v2, "icon":Landroid/graphics/Bitmap;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, v2, v9}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    return-object v9

    .line 409
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v4    # "pixels":I
    .end local v5    # "resourceId":I
    .end local v6    # "resources":Landroid/content/res/Resources;
    :cond_0
    iget v5, v7, Lcom/android/camera/google/SpecialType;->iconDialogResourceId:I

    .restart local v5    # "resourceId":I
    goto :goto_0
.end method

.method private loadProcessingThumb(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 319
    .local v2, "mediaStoreId":J
    invoke-static {}, Lcom/android/camera/google/ProcessingMediaManager;->instance()Lcom/android/camera/google/ProcessingMediaManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/camera/google/ProcessingMediaManager;->isProcessingMedia(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 320
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find processing thumb for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_0
    invoke-static {}, Lcom/android/camera/google/ProcessingMediaManager;->instance()Lcom/android/camera/google/ProcessingMediaManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/camera/google/ProcessingMediaManager;->getProcessingMedia(J)Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;

    move-result-object v1

    .line 324
    .local v1, "thumb":Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;
    if-nez v1, :cond_1

    .line 325
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string/jumbo v5, "Empty thumbnail"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 327
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->decodeBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 329
    iget-object v4, v1, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->data:[B

    invoke-direct {p0, v4}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->writeBytesToFd([B)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    return-object v4

    .line 331
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    return-object v4
.end method

.method public static markPortraitSpecialType(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    return-void

    .line 471
    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 473
    .local v2, "mediaId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 474
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 475
    const-string/jumbo v6, "content"

    .line 474
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 476
    const v6, 0x7f0e0235

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 477
    sget-object v6, Lcom/android/camera/google/SpecialType;->PORTRAIT_TYPE:Lcom/android/camera/google/SpecialType;

    invoke-virtual {v6}, Lcom/android/camera/google/SpecialType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 479
    .local v4, "typeUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 481
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "media_store_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 482
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 467
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "typeUri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private static queryOrScanAndQuery(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "mediaStoreId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 218
    invoke-static {p0, p1, p2}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->querySpecialTypeId(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/camera/google/SpecialType;

    move-result-object v1

    .line 219
    .local v1, "type":Lcom/android/camera/google/SpecialType;
    const-string/jumbo v2, "PhotoTypes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryOrScanAndQuery from query -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "special_type_id"

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 222
    .local v0, "result":Landroid/database/MatrixCursor;
    sget-object v2, Lcom/android/camera/google/SpecialType;->NONE:Lcom/android/camera/google/SpecialType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/camera/google/SpecialType;->UNKNOWN:Lcom/android/camera/google/SpecialType;

    if-eq v1, v2, :cond_0

    .line 223
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/camera/google/SpecialType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 225
    :cond_0
    return-object v0
.end method

.method private queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 12
    .param p1, "mediaStoreId"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 185
    const-string/jumbo v4, "PhotoTypes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryProcessingMetaData -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v11, [Ljava/lang/String;

    .line 187
    const-string/jumbo v5, "media_store_id"

    aput-object v5, v4, v8

    .line 188
    const-string/jumbo v5, "progress_status"

    aput-object v5, v4, v9

    .line 189
    const-string/jumbo v5, "progress_percentage"

    aput-object v5, v4, v10

    .line 186
    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 192
    .local v3, "retCursor":Landroid/database/MatrixCursor;
    if-nez p1, :cond_0

    .line 194
    invoke-static {}, Lcom/android/camera/google/ProcessingMediaManager;->instance()Lcom/android/camera/google/ProcessingMediaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/google/ProcessingMediaManager;->getProcessingMedias()Ljava/util/List;

    move-result-object v2

    .line 195
    .local v2, "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "PhotoTypes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query processing medias -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, "id":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "id$iterator":Ljava/util/Iterator;
    .end local v2    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/android/camera/google/ProcessingMediaManager;->instance()Lcom/android/camera/google/ProcessingMediaManager;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/google/ProcessingMediaManager;->isProcessingMedia(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    const-string/jumbo v4, "PhotoTypes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query processing add into resutl id => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-array v4, v11, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 204
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 205
    return-object v3
.end method

.method private querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 209
    const-string/jumbo v4, "PhotoTypes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "querySepcial Type id uri->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {p1}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getMediaStoreIdFromQueryTypeUri(Landroid/net/Uri;)J

    move-result-wide v2

    .line 211
    .local v2, "mediaStoreId":J
    invoke-virtual {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/google/ProviderDbHelper;->get(Landroid/content/Context;)Lcom/android/camera/google/ProviderDbHelper;

    move-result-object v1

    .line 212
    .local v1, "helper":Lcom/android/camera/google/ProviderDbHelper;
    invoke-virtual {v1}, Lcom/android/camera/google/ProviderDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 214
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, v2, v3}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->queryOrScanAndQuery(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method private static querySpecialTypeId(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/camera/google/SpecialType;
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "mediaStoreId"    # J

    .prologue
    const/4 v5, 0x0

    .line 229
    sget-object v9, Lcom/android/camera/google/SpecialType;->UNKNOWN:Lcom/android/camera/google/SpecialType;

    .line 231
    .local v9, "result":Lcom/android/camera/google/SpecialType;
    const-string/jumbo v1, "type_uri"

    .line 232
    sget-object v2, Lcom/android/camera/google/PhotosSpecialTypesProvider;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    .line 233
    const-string/jumbo v3, "media_store_id = ?"

    .line 234
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 230
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 238
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string/jumbo v0, "special_type_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 239
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, "specialTypeName":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/camera/google/SpecialType;->valueOf(Ljava/lang/String;)Lcom/android/camera/google/SpecialType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 244
    .end local v10    # "specialTypeName":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 247
    return-object v9

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    throw v0
.end method

.method private querySpecialTypeMetadata(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p1}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getSpecialTypeIdFromQueryDataUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "specialTypeIdString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/google/SpecialType;->valueOf(Ljava/lang/String;)Lcom/android/camera/google/SpecialType;

    move-result-object v4

    .line 253
    .local v4, "specialType":Lcom/android/camera/google/SpecialType;
    const-string/jumbo v6, "PhotoTypes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "query special uri -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string/jumbo v6, "PhotoTypes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "query special type id str -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", specialType->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 257
    .local v2, "result":Landroid/database/MatrixCursor;
    array-length v6, p2

    new-array v3, v6, [Ljava/lang/Object;

    .line 258
    .local v3, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 259
    .local v1, "i":I
    const/4 v6, 0x0

    array-length v7, p2

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v0, p2, v6

    .line 260
    .local v0, "column":Ljava/lang/String;
    const-string/jumbo v8, "configuration"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 262
    invoke-virtual {v4}, Lcom/android/camera/google/SpecialType;->getConfiguration()Lcom/android/camera/google/ConfigurationImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/google/ConfigurationImpl;->getKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    .line 284
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 259
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 260
    :cond_0
    const-string/jumbo v8, "special_type_name"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, v4, Lcom/android/camera/google/SpecialType;->nameResourceId:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    goto :goto_1

    .line 260
    :cond_1
    const-string/jumbo v8, "special_type_description"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, v4, Lcom/android/camera/google/SpecialType;->descriptionResourceId:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    goto :goto_1

    .line 260
    :cond_2
    const-string/jumbo v8, "special_type_icon_uri"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 271
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    .line 272
    const-string/jumbo v9, "content"

    .line 271
    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 273
    iget-object v9, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    .line 271
    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 274
    const-string/jumbo v9, "icon"

    .line 271
    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 275
    iget v9, v4, Lcom/android/camera/google/SpecialType;->typeId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 271
    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    aput-object v8, v3, v1

    goto :goto_1

    .line 280
    :cond_3
    const/4 v8, 0x0

    aput-object v8, v3, v1

    goto :goto_1

    .line 287
    .end local v0    # "column":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 288
    return-object v2
.end method

.method private querySpecialTypesVersion()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "version"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    return-object v0
.end method

.method private validateCallingPackage()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->trustedPartners:Lcom/google/android/apps/photos/api/signature/TrustedPartners;

    invoke-virtual {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/photos/api/signature/TrustedPartners;->isTrustedApplication(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 461
    :cond_0
    return-void
.end method

.method private writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, "exception":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 371
    .local v3, "inputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 373
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 374
    .local v0, "descriptors":[Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    aget-object v4, v0, v7

    .line 375
    .local v4, "outputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x1

    aget-object v3, v0, v7

    .line 376
    .local v3, "inputFd":Landroid/os/ParcelFileDescriptor;
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    const/16 v7, 0x64

    :try_start_1
    invoke-virtual {p1, p2, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 378
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    if-eqz v3, :cond_0

    .line 385
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 390
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 392
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 379
    :cond_1
    :goto_1
    return-object v4

    .line 386
    .restart local v2    # "exception":Ljava/io/IOException;
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .local v2, "exception":Ljava/io/IOException;
    goto :goto_0

    .line 393
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "exception":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 394
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    .restart local v2    # "exception":Ljava/io/IOException;
    goto :goto_1

    .line 380
    .end local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inputFd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v2, "exception":Ljava/io/IOException;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 381
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    move-object v2, v1

    .line 383
    .local v2, "exception":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 385
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 390
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 392
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 398
    :cond_3
    :goto_4
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 386
    :catch_3
    move-exception v1

    .line 387
    move-object v2, v1

    goto :goto_3

    .line 393
    :catch_4
    move-exception v1

    .line 394
    move-object v2, v1

    goto :goto_4

    .line 382
    .end local v1    # "e":Ljava/io/IOException;
    .local v2, "exception":Ljava/io/IOException;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v7

    .line 383
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :goto_5
    if-eqz v3, :cond_4

    .line 385
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 390
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    .line 392
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 382
    :cond_5
    :goto_7
    throw v7

    .line 386
    .restart local v2    # "exception":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 387
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    .local v2, "exception":Ljava/io/IOException;
    goto :goto_6

    .line 393
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "exception":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 394
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    .restart local v2    # "exception":Ljava/io/IOException;
    goto :goto_7

    .line 382
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .local v2, "exception":Ljava/io/IOException;
    .restart local v3    # "inputFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 380
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private writeBytesToFd([B)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "exception":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 337
    .local v3, "inputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 339
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 340
    .local v0, "descriptors":[Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    aget-object v4, v0, v7

    .line 341
    .local v4, "outputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x1

    aget-object v3, v0, v7

    .line 342
    .local v3, "inputFd":Landroid/os/ParcelFileDescriptor;
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    array-length v7, p1

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 344
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 349
    if-eqz v3, :cond_0

    .line 351
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 356
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 358
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 345
    :cond_1
    :goto_1
    return-object v4

    .line 352
    .restart local v2    # "exception":Ljava/io/IOException;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .local v2, "exception":Ljava/io/IOException;
    goto :goto_0

    .line 359
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "exception":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 360
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    .restart local v2    # "exception":Ljava/io/IOException;
    goto :goto_1

    .line 346
    .end local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inputFd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v2, "exception":Ljava/io/IOException;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 347
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    move-object v2, v1

    .line 349
    .local v2, "exception":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 351
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 356
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 358
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 364
    :cond_3
    :goto_4
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 352
    :catch_3
    move-exception v1

    .line 353
    move-object v2, v1

    goto :goto_3

    .line 359
    :catch_4
    move-exception v1

    .line 360
    move-object v2, v1

    goto :goto_4

    .line 348
    .end local v1    # "e":Ljava/io/IOException;
    .local v2, "exception":Ljava/io/IOException;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v7

    .line 349
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :goto_5
    if-eqz v3, :cond_4

    .line 351
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 356
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    .line 358
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 348
    :cond_5
    :goto_7
    throw v7

    .line 352
    .restart local v2    # "exception":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 353
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    .local v2, "exception":Ljava/io/IOException;
    goto :goto_6

    .line 359
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "exception":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 360
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    .restart local v2    # "exception":Ljava/io/IOException;
    goto :goto_7

    .line 348
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .local v2, "exception":Ljava/io/IOException;
    .restart local v3    # "inputFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 346
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v0, "trustedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/android/apps/photos/api/signature/TrustedPartners;

    invoke-direct {v1, p1, v0}, Lcom/google/android/apps/photos/api/signature/TrustedPartners;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->trustedPartners:Lcom/google/android/apps/photos/api/signature/TrustedPartners;

    .line 104
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    .line 105
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 106
    iget-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    const-string/jumbo v3, "type/*"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    const-string/jumbo v3, "data/*"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    iget-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    const-string/jumbo v3, "icon/#/badge"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    iget-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    const-string/jumbo v3, "icon/#/interact"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    iget-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    const-string/jumbo v3, "icon/#/dialog"

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    iget-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    const-string/jumbo v3, "delete/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    iget-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    const-string/jumbo v3, "processing"

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    iget-object v1, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->authority:Ljava/lang/String;

    const-string/jumbo v3, "processing/#"

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->querySpecialTypesVersion()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->validateCallingPackage()V

    .line 158
    iget-object v0, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :pswitch_0
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/photos/api/Preconditions;->checkArgument(Z)V

    .line 161
    if-nez p3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/apps/photos/api/Preconditions;->checkArgument(Z)V

    .line 162
    invoke-direct {p0, p1}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->deleteSpecialType(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 160
    goto :goto_0

    :cond_1
    move v0, v2

    .line 161
    goto :goto_1

    :cond_2
    move v1, v2

    .line 162
    goto :goto_2

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 431
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 437
    invoke-direct {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->validateCallingPackage()V

    .line 438
    const-string/jumbo v8, "PhotoTypes"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "insert uri->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", values "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {p1}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getSpecialTypeIdFromQueryDataUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 440
    .local v7, "specialTypeIdString":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/camera/google/SpecialType;->valueOf(Ljava/lang/String;)Lcom/android/camera/google/SpecialType;

    move-result-object v6

    .line 441
    .local v6, "specialType":Lcom/android/camera/google/SpecialType;
    sget-object v8, Lcom/android/camera/google/SpecialType;->PORTRAIT_TYPE:Lcom/android/camera/google/SpecialType;

    if-ne v6, v8, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/google/ProviderDbHelper;->get(Landroid/content/Context;)Lcom/android/camera/google/ProviderDbHelper;

    move-result-object v2

    .line 443
    .local v2, "helper":Lcom/android/camera/google/ProviderDbHelper;
    invoke-virtual {v2}, Lcom/android/camera/google/ProviderDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 444
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "media_store_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "mediaId":Ljava/lang/String;
    const-string/jumbo v8, "media_store_id"

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string/jumbo v8, "special_type_id"

    invoke-virtual {v6}, Lcom/android/camera/google/SpecialType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string/jumbo v8, "type_uri"

    invoke-virtual {v1, v8, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 449
    .local v4, "id":J
    return-object p1

    .line 452
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/android/camera/google/ProviderDbHelper;
    .end local v3    # "mediaId":Ljava/lang/String;
    .end local v4    # "id":J
    :cond_0
    return-object v11
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->validateCallingPackage()V

    .line 296
    const-string/jumbo v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 313
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :pswitch_1
    const-string/jumbo v0, "PhotoTypes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading badge icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 304
    :pswitch_2
    const-string/jumbo v0, "PhotoTypes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading interact icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 307
    :pswitch_3
    const-string/jumbo v0, "PhotoTypes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading dialog icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_4
    const-string/jumbo v0, "PhotoTypes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading processing thumb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0, p1}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->loadProcessingThumb(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->validateCallingPackage()V

    .line 140
    const-string/jumbo v0, "PhotoTypes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query, uri-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/camera/google/PhotosSpecialTypesProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 145
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->querySpecialTypeMetadata(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 149
    :pswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
