.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$E80h1V8z3ejUAqV3jGQlgxsJOlc(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
