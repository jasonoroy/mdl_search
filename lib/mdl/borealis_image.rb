module MDL

  class BorealisImage <  BorealisAsset
    def src
      "/contentdm-images/info?id=#{collection}:#{id}"
    end

    def type
      'image'
    end

    def initial_path
      "#{super}/0"
    end

    def downloads
      [
        { src: "http://reflections.mndigital.org/digital/iiif/#{collection}/#{id}/full/150,150/0/default.jpg", label: '(150 x 150)' },
        { src: "http://reflections.mndigital.org/digital/iiif/#{collection}/#{id}/full/800,800/0/default.jpg", label: '(800 x 800)' },
        { src: "http://reflections.mndigital.org/digital/iiif/#{collection}/#{id}/full/1920,1920/0/default.jpg", label: '(1920 x 1920)' }
      ]
    end

    def to_viewer
      {}
    end
  end
end