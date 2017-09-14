.class final Lcom/android/camera/google/TypeIdTable;
.super Ljava/lang/Object;
.source "TypeIdTable.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCreateSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "CREATE TABLE type_uri (media_store_id INTEGER PRIMARY KEY, special_type_id TEXT NOT NULL)"

    return-object v0
.end method
