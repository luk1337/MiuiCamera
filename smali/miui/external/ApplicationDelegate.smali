.class public abstract Lmiui/external/ApplicationDelegate;
.super Landroid/content/ContextWrapper;
.source "ApplicationDelegate.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private c:Lmiui/external/Application;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method l(Lmiui/external/Application;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lmiui/external/ApplicationDelegate;->c:Lmiui/external/Application;

    .line 50
    invoke-virtual {p0, p1}, Lmiui/external/ApplicationDelegate;->attachBaseContext(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->c:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->y(Landroid/content/res/Configuration;)V

    .line 90
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->c:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->w()V

    .line 66
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->c:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->z()V

    .line 105
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->c:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->x()V

    .line 76
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->c:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->A(I)V

    .line 125
    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->c:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 137
    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->c:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 147
    return-void
.end method
