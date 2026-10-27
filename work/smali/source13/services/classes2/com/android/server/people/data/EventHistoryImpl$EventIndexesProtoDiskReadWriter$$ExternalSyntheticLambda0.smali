.class public final synthetic Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->lambda$protoStreamReader$1(Landroid/util/proto/ProtoInputStream;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method
