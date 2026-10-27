.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;->f$1:Lcom/android/server/pm/ShortcutUser;

    iput p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;->f$1:Lcom/android/server/pm/ShortcutUser;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;->f$2:I

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->lambda$rescanUpdatedPackagesLocked$15$com-android-server-pm-ShortcutService(Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V

    return-void
.end method
