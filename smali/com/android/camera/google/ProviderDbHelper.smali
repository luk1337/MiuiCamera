.class final Lcom/android/camera/google/ProviderDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProviderDbHelper.java"


# static fields
.field private static volatile helper:Lcom/android/camera/google/ProviderDbHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string/jumbo v0, "provider_db_helper"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/android/camera/google/ProviderDbHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v0, Lcom/android/camera/google/ProviderDbHelper;->helper:Lcom/android/camera/google/ProviderDbHelper;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/android/camera/google/ProviderDbHelper;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/android/camera/google/ProviderDbHelper;->helper:Lcom/android/camera/google/ProviderDbHelper;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/camera/google/ProviderDbHelper;

    invoke-direct {v0, p0}, Lcom/android/camera/google/ProviderDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/google/ProviderDbHelper;->helper:Lcom/android/camera/google/ProviderDbHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 25
    :cond_1
    sget-object v0, Lcom/android/camera/google/ProviderDbHelper;->helper:Lcom/android/camera/google/ProviderDbHelper;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 34
    invoke-static {}, Lcom/android/camera/google/TypeIdTable;->getCreateSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 39
    move v0, p2

    .line 40
    .local v0, "currentVersion":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 41
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    const-string/jumbo v1, "type_uri"

    invoke-virtual {p1, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
