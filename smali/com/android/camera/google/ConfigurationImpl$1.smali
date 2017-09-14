.class final enum Lcom/android/camera/google/ConfigurationImpl$1;
.super Lcom/android/camera/google/ConfigurationImpl;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/google/ConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/google/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/camera/google/ConfigurationImpl;)V

    return-void
.end method


# virtual methods
.method validate(Lcom/android/camera/google/SpecialType;)V
    .locals 0
    .param p1, "specialType"    # Lcom/android/camera/google/SpecialType;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/android/camera/google/ConfigurationImpl;->validate(Lcom/android/camera/google/SpecialType;)V

    .line 14
    return-void
.end method
