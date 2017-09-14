.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"

# interfaces
.implements Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method
