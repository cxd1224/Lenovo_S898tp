.class Lcom/lenovo/fm/RadioActivity$25;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->setSleepAlarm(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2512
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$25;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$25;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->isEnter:I
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$5900(Lcom/lenovo/fm/RadioActivity;)I

    move-result v0

    invoke-static {}, Lcom/lenovo/fm/RadioActivity;->access$6000()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2516
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$25;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->isEnter:I
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$5900(Lcom/lenovo/fm/RadioActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6002(I)I

    .line 2518
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$25;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->isSelectPos:I
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6100(Lcom/lenovo/fm/RadioActivity;)I

    move-result v0

    invoke-static {}, Lcom/lenovo/fm/RadioActivity;->access$6200()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2519
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$25;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->isSelectPos:I
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6100(Lcom/lenovo/fm/RadioActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6202(I)I

    .line 2521
    :cond_1
    return-void
.end method
