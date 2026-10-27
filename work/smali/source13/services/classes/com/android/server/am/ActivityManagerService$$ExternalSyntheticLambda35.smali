.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;

.field public final synthetic f$1:Landroid/content/pm/IPackageManager;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Landroid/content/pm/IPackageManager;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$0:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$1:Landroid/content/pm/IPackageManager;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$0:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$1:Landroid/content/pm/IPackageManager;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$2:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->lambda$appendDropBoxProcessHeaders$11(Ljava/lang/StringBuilder;Landroid/content/pm/IPackageManager;ILjava/lang/String;)V

    return-void
.end method
