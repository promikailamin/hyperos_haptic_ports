.class public final synthetic Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/ResolveInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/ResolveInfo;

    invoke-static {v0}, Lcom/android/server/am/ComponentAliasResolver;->lambda$resolveReceiver$3(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
