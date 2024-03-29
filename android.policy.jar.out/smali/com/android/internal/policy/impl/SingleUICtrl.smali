.class public Lcom/android/internal/policy/impl/SingleUICtrl;
.super Ljava/lang/Object;
.source "SingleUICtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/ISettingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SingleUICtrl$1;,
        Lcom/android/internal/policy/impl/SingleUICtrl$SingleUIHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_SU_BLACK_LIST:[Ljava/lang/String; = null

.field private static final FIELD_SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field static final FIELD_SINGLE_UI_MODE_SENSOR_SWITCH:Ljava/lang/String; = "single_ui_mode_sensor_switch"

.field private static final FIELD_SU_BLACK_LIST:Ljava/lang/String; = "single_ui_black_list"

.field private static final FIELD_SU_DISPLAY_SIZE:Ljava/lang/String; = "single_ui_display_size"

.field static final MSG_DISABLE_SINGLE_UI:I = 0x65

.field static final MSG_ENABLE_SINGLE_UI:I = 0x64

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES:Ljava/lang/String; = "nubia_overlay_display_devices"

.field private static final TAG:Ljava/lang/String; = "SingleUICtrl"


# instance fields
.field private enableSingleUISensor:Z

.field private mBlackListStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisplaySize:Ljava/lang/String;

.field private mHasScreenOrientationSensor:Z

.field private mHasSingleHand:Z

.field private mSingleMode:I

.field private mSingleModeSensorSwitch:I

.field private mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.gallery3d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/SingleUICtrl;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleMode:I

    const-string v0, "1280x720/213"

    iput-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mDisplaySize:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->enableSingleUISensor:Z

    iput v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleModeSensorSwitch:I

    iput-object v3, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mainHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    const-string v0, "1"

    const-string v1, "persist.sys.singlehand"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/policy/impl/SingleUICtrl;->getDefaultBlackList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/policy/impl/SingleUICtrl$SingleUIHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/SingleUICtrl$SingleUIHandler;-><init>(Lcom/android/internal/policy/impl/SingleUICtrl;Lcom/android/internal/policy/impl/SingleUICtrl$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/policy/impl/SingleUISensorListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mDisplaySize:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/policy/impl/SingleUISensorListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    :cond_0
    return-void
.end method

.method private static getDefaultBlackList(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "single_ui_black_list"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, blackList:Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .local v1, i:I
    sget-object v4, Lcom/android/internal/policy/impl/SingleUICtrl;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    array-length v2, v4

    .local v2, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, sb:Ljava/lang/StringBuilder;
    :goto_0
    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/SingleUICtrl;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    return-object v0
.end method


# virtual methods
.method changeOrientationSensor(II)V
    .locals 1
    .parameter "currentOrientation"
    .parameter "orientation"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->isFinishRotationForOrientationLw(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/SingleUICtrl;->openSUHandleScreenOrientationSensor(I)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/SingleUICtrl;->closeSUHandleSreenOrientationSensor(I)V

    :cond_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method closeSUHandleSreenOrientationSensor(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleMode:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleModeSensorSwitch:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasScreenOrientationSensor:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasScreenOrientationSensor:Z

    :cond_0
    return-void
.end method

.method disableSingleUI()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->enableSingleUISensor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SingleUISensorListener;->disable()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->enableSingleUISensor:Z

    :cond_0
    return-void
.end method

.method enableSingleUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->enableSingleUISensor:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleModeSensorSwitch:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SingleUISensorListener;->enable()V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->enableSingleUISensor:Z

    :cond_0
    return-void
.end method

.method openSUHandleScreenOrientationSensor(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasScreenOrientationSensor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasScreenOrientationSensor:Z

    :cond_0
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "resolver"
    .parameter "observer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "single_ui_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "single_ui_display_size"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "single_ui_black_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "nubia_overlay_display_devices"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "single_ui_mode_sensor_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SingleUICtrl;->updateSingleModeState(Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method updateSingleModeState(Landroid/content/ContentResolver;)V
    .locals 11
    .parameter "resolver"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x2

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mHasSingleHand:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "SingleUICtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSingleModeState,mSingleMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mSingleModeSensorSwitch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleModeSensorSwitch:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mDisplaySize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mDisplaySize:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mBlackListStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "single_ui_mode"

    invoke-static {p1, v6, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .local v3, singleMode:I
    const-string v6, "SingleUICtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "singleMode ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleMode:I

    if-eq v6, v3, :cond_3

    iput v3, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleMode:I

    iget v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleModeSensorSwitch:I

    if-eq v3, v6, :cond_2

    const-string v6, "single_ui_mode_sensor_switch"

    invoke-static {p1, v6, v3, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    if-nez v3, :cond_3

    const-string v6, "nubia_overlay_display_devices"

    invoke-static {p1, v6, v9}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .local v4, smallScreenState:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "SingleUICtrl"

    const-string v7, "set nubia_overlay_display_devices close"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "nubia_overlay_display_devices"

    const-string v7, ""

    invoke-static {p1, v6, v7, v9}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .end local v4           #smallScreenState:Ljava/lang/String;
    :cond_3
    const-string v6, "single_ui_mode_sensor_switch"

    invoke-static {p1, v6, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .local v5, suSensorSwitch:I
    const-string v6, "SingleUICtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "suSensorSwitch ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleModeSensorSwitch:I

    if-eq v6, v5, :cond_4

    iput v5, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleModeSensorSwitch:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mainHandler:Landroid/os/Handler;

    if-eqz v6, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mainHandler:Landroid/os/Handler;

    if-eqz v5, :cond_7

    const/16 v6, 0x64

    :goto_1
    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_2
    const-string v6, "single_ui_display_size"

    invoke-static {p1, v6, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, displaySize:Ljava/lang/String;
    const-string v6, "SingleUICtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displaySize ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mDisplaySize:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    if-eqz v6, :cond_5

    iput-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mDisplaySize:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/SingleUISensorListener;->setDisplaySize(Ljava/lang/String;)V

    :cond_5
    const-string v6, "single_ui_black_list"

    invoke-static {p1, v6, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, blackList:Ljava/lang/String;
    const-string v6, "SingleUICtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blackList ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    if-eqz v6, :cond_6

    iput-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    invoke-virtual {v6, v0}, Lcom/android/internal/policy/impl/SingleUISensorListener;->updateBlackList(Ljava/lang/String;)V

    :cond_6
    const-string v6, "nubia_overlay_display_devices"

    invoke-static {p1, v6, v9}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, screenStatus:Ljava/lang/String;
    const-string v6, "SingleUICtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screenStatus ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    if-ne v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleUISensorListener:Lcom/android/internal/policy/impl/SingleUISensorListener;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/SingleUISensorListener;->setDisplayCloseStatus()V

    goto/16 :goto_0

    .end local v0           #blackList:Ljava/lang/String;
    .end local v1           #displaySize:Ljava/lang/String;
    .end local v2           #screenStatus:Ljava/lang/String;
    :cond_7
    const/16 v6, 0x65

    goto/16 :goto_1

    :cond_8
    const-string v6, "SingleUICtrl"

    const-string v7, "mainHandler == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
