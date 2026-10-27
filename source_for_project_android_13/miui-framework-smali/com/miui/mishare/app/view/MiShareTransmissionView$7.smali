.class Lcom/miui/mishare/app/view/MiShareTransmissionView$7;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/mishare/app/view/MiShareTransmissionView;

    .line 1040
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$7;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 1043
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$7;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmConnectivity(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/connect/MiShareConnectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->reBindService()V

    .line 1044
    return-void
.end method
