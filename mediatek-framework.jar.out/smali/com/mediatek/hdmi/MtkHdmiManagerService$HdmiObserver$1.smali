.class Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;
.super Landroid/os/Handler;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;->this$1:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 937
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 945
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 947
    :goto_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;->this$1:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    #getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->access$1600(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 948
    return-void

    .line 939
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;->this$1:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->sendIntents(IILjava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->access$1400(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;IILjava/lang/String;)V

    goto :goto_0

    .line 942
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;->this$1:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->handleOtgStateChanged(I)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->access$1500(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;I)V

    goto :goto_0

    .line 937
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
