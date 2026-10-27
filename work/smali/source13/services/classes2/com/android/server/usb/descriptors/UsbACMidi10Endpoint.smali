.class public final Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "UsbACMidi10Endpoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACMidi10Endpoint"


# instance fields
.field private mJackIds:[B

.field private mNumJacks:B


# direct methods
.method public constructor <init>(IBIB)V
    .registers 6
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subclass"    # I
    .param p4, "subtype"    # B

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACEndpoint;-><init>(IBIB)V

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mJackIds:[B

    .line 33
    return-void
.end method


# virtual methods
.method public getJackIds()[B
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mJackIds:[B

    return-object v0
.end method

.method public getNumJacks()B
    .registers 2

    .line 36
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mNumJacks:B

    return v0
.end method

.method public bridge synthetic getSubclass()I
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubclass()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSubtype()B
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubtype()B

    move-result v0

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 45
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 47
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mNumJacks:B

    .line 48
    if-lez v0, :cond_1f

    .line 49
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mJackIds:[B

    .line 50
    const/4 v0, 0x0

    .local v0, "jack":I
    :goto_10
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mNumJacks:B

    if-ge v0, v1, :cond_1f

    .line 51
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mJackIds:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 54
    .end local v0    # "jack":I
    :cond_1f
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 4
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACMidi10Endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->getType()B

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeHeader(ILjava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->getNumJacks()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Jacks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 66
    return-void
.end method
