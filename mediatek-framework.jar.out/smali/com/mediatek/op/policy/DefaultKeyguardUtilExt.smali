.class public Lcom/mediatek/op/policy/DefaultKeyguardUtilExt;
.super Ljava/lang/Object;
.source "DefaultKeyguardUtilExt.java"

# interfaces
.implements Lcom/mediatek/common/policy/IKeyguardUtilExt;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DefaultKeyguardUtilExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needShowPassToast()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowEmergencyBtnForVoiceOn()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public updateNewEventControllerVisibility(Landroid/view/View;I)V
    .locals 0
    .parameter "viewContainer"
    .parameter "newEventViewId"

    .prologue
    .line 76
    return-void
.end method
