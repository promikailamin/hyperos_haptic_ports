.class Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventSessionLostInfo"
.end annotation


# instance fields
.field public final exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;->exception:Ljava/lang/Exception;

    .line 284
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 293
    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    if-nez v0, :cond_6

    .line 294
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    .line 298
    .local v0, "rhs":Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;->exception:Ljava/lang/Exception;

    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;->exception:Ljava/lang/Exception;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 288
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;->exception:Ljava/lang/Exception;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
