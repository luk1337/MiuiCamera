.class public Lcom/adobe/xmp/impl/XMPMetaParser;
.super Ljava/lang/Object;
.source "XMPMetaParser.java"


# static fields
.field private static final XMP_RDF:Ljava/lang/Object;

.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/adobe/xmp/impl/XMPMetaParser;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 394
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 395
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 396
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 402
    :try_start_0
    const-string/jumbo v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .param p0, "root"    # Lorg/w3c/dom/Node;
    .param p1, "xmpmetaRequired"    # Z
    .param p2, "result"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 326
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 327
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 329
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 330
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v9, v5, :cond_1

    move-object v5, p0

    .line 331
    check-cast v5, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v5}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "xpacket"

    if-ne v5, v6, :cond_1

    .line 334
    if-eqz p2, :cond_0

    move-object v5, p0

    .line 336
    check-cast v5, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v5}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, p2, v6

    .line 327
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-eq v6, v5, :cond_0

    .line 340
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v9, v5, :cond_0

    .line 342
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "rootNS":Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "rootLocal":Ljava/lang/String;
    const-string/jumbo v5, "xmpmeta"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 347
    const-string/jumbo v5, "xapmeta"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 345
    if-eqz v5, :cond_3

    .line 349
    :cond_2
    const-string/jumbo v5, "adobe:ns:meta/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 344
    if-eqz v5, :cond_3

    .line 353
    invoke-static {p0, v8, p2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 355
    :cond_3
    if-nez p1, :cond_5

    .line 356
    const-string/jumbo v5, "RDF"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 355
    if-eqz v5, :cond_5

    .line 357
    const-string/jumbo v5, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 355
    if-eqz v5, :cond_5

    .line 359
    if-eqz p2, :cond_4

    .line 361
    aput-object p0, p2, v8

    .line 362
    sget-object v5, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v5, p2, v6

    .line 364
    :cond_4
    return-object p2

    .line 369
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 370
    .local v2, "newResult":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 372
    return-object v2

    .line 383
    .end local v2    # "newResult":[Ljava/lang/Object;
    .end local v3    # "rootLocal":Ljava/lang/String;
    .end local v4    # "rootNS":Ljava/lang/String;
    :cond_6
    return-object v7
.end method

.method public static parse(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;
    .locals 6
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 75
    if-eqz p1, :cond_0

    .line 77
    :goto_0
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXml(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 79
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getRequireXMPMeta()Z

    move-result v3

    .line 80
    .local v3, "xmpmetaRequired":Z
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/Object;

    .line 81
    .local v1, "result":[Ljava/lang/Object;
    invoke-static {v0, v3, v1}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    sget-object v5, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    .line 85
    const/4 v4, 0x0

    aget-object v4, v1, v4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-static {v4}, Lcom/adobe/xmp/impl/ParseRDF;->parse(Lorg/w3c/dom/Node;)Lcom/adobe/xmp/impl/XMPMetaImpl;

    move-result-object v2

    .line 86
    .local v2, "xmp":Lcom/adobe/xmp/impl/XMPMetaImpl;
    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setPacketHeader(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getOmitNormalization()Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    invoke-static {v2, p1}, Lcom/adobe/xmp/impl/XMPNormalizer;->process(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v4

    return-object v4

    .line 75
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "result":[Ljava/lang/Object;
    .end local v2    # "xmp":Lcom/adobe/xmp/impl/XMPMetaImpl;
    .end local v3    # "xmpmetaRequired":Z
    :cond_0
    new-instance p1, Lcom/adobe/xmp/options/ParseOptions;

    .end local p1    # "options":Lcom/adobe/xmp/options/ParseOptions;
    invoke-direct {p1}, Lcom/adobe/xmp/options/ParseOptions;-><init>()V

    goto :goto_0

    .line 95
    .restart local v0    # "document":Lorg/w3c/dom/Document;
    .restart local v1    # "result":[Ljava/lang/Object;
    .restart local v2    # "xmp":Lcom/adobe/xmp/impl/XMPMetaImpl;
    .restart local v3    # "xmpmetaRequired":Z
    .restart local p1    # "options":Lcom/adobe/xmp/options/ParseOptions;
    :cond_1
    return-object v2

    .line 101
    .end local v2    # "xmp":Lcom/adobe/xmp/impl/XMPMetaImpl;
    :cond_2
    new-instance v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    return-object v4
.end method

.method private static parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 7
    .param p0, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    sget-object v4, Lcom/adobe/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 272
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 273
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 285
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v5, "Error reading the XML-file"

    const/16 v6, 0xcc

    invoke-direct {v4, v5, v6, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4

    .line 280
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 281
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v5, "XML Parser not correctly configured"

    .line 282
    const/4 v6, 0x0

    .line 281
    invoke-direct {v4, v5, v6, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4

    .line 276
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v3

    .line 277
    .local v3, "e":Lorg/xml/sax/SAXException;
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v5, "XML parsing failure"

    const/16 v6, 0xc9

    invoke-direct {v4, v5, v6, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4
.end method

.method private static parseXml(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 126
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 128
    check-cast p0, Ljava/io/InputStream;

    .end local p0    # "input":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    .line 130
    .restart local p0    # "input":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    check-cast p0, [B

    .end local p0    # "input":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>([B)V

    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    .line 136
    .restart local p0    # "input":Ljava/lang/Object;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "input":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private static parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 8
    .param p0, "buffer"    # Lcom/adobe/xmp/impl/ByteBuffer;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 189
    .local v4, "source":Lorg/xml/sax/InputSource;
    :try_start_0
    invoke-static {v4}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v5

    const/16 v6, 0xc9

    if-eq v5, v6, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v5

    const/16 v6, 0xcc

    if-ne v5, v6, :cond_3

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 198
    invoke-static {p0}, Lcom/adobe/xmp/impl/Latin1Converter;->convert(Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object p0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "encoding":Ljava/lang/String;
    new-instance v3, Lcom/adobe/xmp/impl/FixASCIIControlsReader;

    .line 207
    new-instance v5, Ljava/io/InputStreamReader;

    .line 208
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v6

    .line 207
    invoke-direct {v5, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 206
    invoke-direct {v3, v5}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    .line 209
    .local v3, "fixReader":Ljava/io/Reader;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v5}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    return-object v5

    .line 212
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "fixReader":Ljava/io/Reader;
    :catch_1
    move-exception v1

    .line 214
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v6, "Unsupported Encoding"

    .line 215
    const/16 v7, 0x9

    .line 214
    invoke-direct {v5, v6, v7, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v5

    .line 218
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_2
    new-instance v4, Lorg/xml/sax/InputSource;

    .end local v4    # "source":Lorg/xml/sax/InputSource;
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 219
    .restart local v4    # "source":Lorg/xml/sax/InputSource;
    invoke-static {v4}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v5

    return-object v5

    .line 223
    :cond_3
    throw v0
.end method

.method private static parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    .line 163
    .local v0, "buffer":Lcom/adobe/xmp/impl/ByteBuffer;
    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 155
    .end local v0    # "buffer":Lcom/adobe/xmp/impl/ByteBuffer;
    :cond_1
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v3, "Error reading the XML-file"

    .line 168
    const/16 v4, 0xcc

    .line 167
    invoke-direct {v2, v3, v4, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method

.method private static parseXmlFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 244
    .local v1, "source":Lorg/xml/sax/InputSource;
    :try_start_0
    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v2

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    new-instance v1, Lorg/xml/sax/InputSource;

    .end local v1    # "source":Lorg/xml/sax/InputSource;
    new-instance v2, Lcom/adobe/xmp/impl/FixASCIIControlsReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 251
    .restart local v1    # "source":Lorg/xml/sax/InputSource;
    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2

    .line 255
    :cond_0
    throw v0
.end method
