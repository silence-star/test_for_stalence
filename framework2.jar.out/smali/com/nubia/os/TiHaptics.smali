.class public Lcom/nubia/os/TiHaptics;
.super Ljava/lang/Object;
.source "TiHaptics.java"

# interfaces
.implements Lcom/nubia/os/INubiaHaptics;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TiHaptics"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHaptics:Landroid/os/Haptics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/SystemHaptics;

    invoke-direct {v0}, Landroid/os/SystemHaptics;-><init>()V

    iput-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nubia/os/TiHaptics;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/SystemHaptics;

    invoke-direct {v0, p1}, Landroid/os/SystemHaptics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 0
    .parameter "log_str"

    .prologue
    return-void
.end method

.method private isHapticsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .local v0, intValue:I
    iget-object v2, p0, Lcom/nubia/os/TiHaptics;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nubia/os/TiHaptics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public clickButton()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public clickKey()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public longPressBlank()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressButton()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    const-string v0, "longPressButton"

    invoke-direct {p0, v0}, Lcom/nubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressKeyEnd()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    const-string v0, "longPressKey e"

    invoke-direct {p0, v0}, Lcom/nubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressKeyStart()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    const-string v0, "longPressKey s"

    invoke-direct {p0, v0}, Lcom/nubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressTelButtonEnd()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressTelButtonStart()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public notificationVibrator1()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    :cond_0
    return-void
.end method

.method public notificationVibrator2()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    :cond_0
    return-void
.end method

.method public slideButtonEnd()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public slideButtonStart()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method
