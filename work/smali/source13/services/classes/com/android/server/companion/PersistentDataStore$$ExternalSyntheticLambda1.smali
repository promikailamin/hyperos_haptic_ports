.class public final synthetic Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;->f$0:Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;->f$0:Lorg/xmlpull/v1/XmlSerializer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/server/companion/PersistentDataStore;->lambda$writePreviouslyUsedIdsForPackage$2(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V

    return-void
.end method
