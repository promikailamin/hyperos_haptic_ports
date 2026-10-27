.class final Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
.super Ljava/lang/Object;
.source "SensorController.java"


# instance fields
.field public final mHandle:I

.field public final mName:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandle(Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    return p0
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput p1, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    .line 363
    iput p2, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    .line 364
    iput-object p3, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHandle()I
    .registers 1

    .line 367
    iget p0, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    return p0
.end method

.method public getType()I
    .registers 1

    .line 370
    iget p0, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorDescriptor( name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
