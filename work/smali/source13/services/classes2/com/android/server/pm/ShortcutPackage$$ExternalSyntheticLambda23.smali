.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/pm/ShortcutPackage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/pm/ShortcutPackage;

    check-cast p1, Landroid/app/appsearch/GenericDocument;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$getTopShortcutsFromPersistence$48$com-android-server-pm-ShortcutPackage(Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    return-object p1
.end method
