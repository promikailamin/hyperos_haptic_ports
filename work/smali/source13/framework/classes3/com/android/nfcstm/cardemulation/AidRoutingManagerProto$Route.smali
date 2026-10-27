.class public final Lcom/android/nfcstm/cardemulation/AidRoutingManagerProto$Route;
.super Ljava/lang/Object;
.source "AidRoutingManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfcstm/cardemulation/AidRoutingManagerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Route"
.end annotation


# static fields
.field public static final blacklist AIDS:J = 0x20900000002L

.field public static final blacklist ID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/nfcstm/cardemulation/AidRoutingManagerProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/nfcstm/cardemulation/AidRoutingManagerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfcstm/cardemulation/AidRoutingManagerProto;

    .line 11
    iput-object p1, p0, Lcom/android/nfcstm/cardemulation/AidRoutingManagerProto$Route;->this$0:Lcom/android/nfcstm/cardemulation/AidRoutingManagerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
