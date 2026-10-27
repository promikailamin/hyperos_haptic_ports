.class public Lcom/android/server/companion/actionrequest/ActionRequestProcessor$1;
.super Landroid/companion/IOnTransportsChangedListener$Stub;
.source "ActionRequestProcessor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/actionrequest/ActionRequestProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/actionrequest/ActionRequestProcessor;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$1;->this$0:Lcom/android/server/companion/actionrequest/ActionRequestProcessor;

    invoke-direct {p0}, Landroid/companion/IOnTransportsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransportsChanged(Ljava/util/List;)V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$1;->this$0:Lcom/android/server/companion/actionrequest/ActionRequestProcessor;

    invoke-static {p0, p1}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->-$$Nest$mhandleOnTransportsChanged(Lcom/android/server/companion/actionrequest/ActionRequestProcessor;Ljava/util/List;)V

    return-void
.end method
