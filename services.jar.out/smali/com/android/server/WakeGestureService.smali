.class public Lcom/android/server/WakeGestureService;
.super Landroid/os/IWakeGestureService$Stub;
.source "WakeGestureService.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/IWakeGestureService$Stub;-><init>()V

    return-void
.end method

.method static native enableWake(Z)Z
.end method


# virtual methods
.method public enableWakeGesture(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    invoke-static {p1}, Lcom/android/server/WakeGestureService;->enableWake(Z)Z

    move-result v0

    return v0
.end method
