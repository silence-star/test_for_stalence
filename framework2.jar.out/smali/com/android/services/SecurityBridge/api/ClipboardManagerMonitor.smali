.class public Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;
.super Ljava/lang/Object;
.source "ClipboardManagerMonitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public approvePasteRequest(ILandroid/content/ClipData;)Z
    .locals 1
    .parameter "appID"
    .parameter "clipData"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public notifyCopy(ILandroid/content/ClipData;)V
    .locals 0
    .parameter "appID"
    .parameter "clipData"

    .prologue
    return-void
.end method
