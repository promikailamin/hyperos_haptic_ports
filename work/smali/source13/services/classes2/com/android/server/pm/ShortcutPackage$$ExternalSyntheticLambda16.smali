.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;->f$2:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$disableWithId$7$com-android-server-pm-ShortcutPackage(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method
