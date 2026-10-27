.class Landroid/util/MiuiMultiWindowUtils$1;
.super Ljava/lang/Object;
.source "MiuiMultiWindowUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZIIZIZ)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$freeformPkg:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1547
    iput-object p1, p0, Landroid/util/MiuiMultiWindowUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/util/MiuiMultiWindowUtils$1;->val$freeformPkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1550
    iget-object v0, p0, Landroid/util/MiuiMultiWindowUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/util/MiuiMultiWindowUtils$1;->val$freeformPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/MiuiMultiWindowUtils;->-$$Nest$smsaveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V

    .line 1551
    return-void
.end method
