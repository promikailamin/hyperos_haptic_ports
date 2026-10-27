.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;->f$1:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$u2TW10N9uT7noY_TMQjdO6jOhxM(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
