.class Lmiui/stepcounter/StepProvider$1;
.super Ljava/lang/Object;
.source "StepProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/stepcounter/StepProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/stepcounter/StepProvider;


# direct methods
.method constructor blacklist <init>(Lmiui/stepcounter/StepProvider;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/stepcounter/StepProvider;

    .line 130
    iput-object p1, p0, Lmiui/stepcounter/StepProvider$1;->this$0:Lmiui/stepcounter/StepProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 133
    iget-object v0, p0, Lmiui/stepcounter/StepProvider$1;->this$0:Lmiui/stepcounter/StepProvider;

    invoke-static {v0}, Lmiui/stepcounter/StepProvider;->-$$Nest$mmergeDataBaseFromPowerKeeper(Lmiui/stepcounter/StepProvider;)V

    .line 134
    return-void
.end method
