.class public Lcom/android/server/lineage/display/LiveDisplayService$1;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/LiveDisplayService;

.field public final synthetic val$flags:I


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/LiveDisplayService;I)V
    .registers 3

    .line 218
    iput-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayService$1;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    iput p2, p0, Lcom/android/server/lineage/display/LiveDisplayService$1;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    .line 221
    :goto_1
    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService$1;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmFeatures(Lcom/android/server/lineage/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 222
    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService$1;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmFeatures(Lcom/android/server/lineage/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lineage/display/LiveDisplayFeature;

    iget v2, p0, Lcom/android/server/lineage/display/LiveDisplayService$1;->val$flags:I

    iget-object v3, p0, Lcom/android/server/lineage/display/LiveDisplayService$1;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v3}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/lineage/display/LiveDisplayFeature;->update(ILcom/android/server/lineage/display/LiveDisplayService$State;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method
